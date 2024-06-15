import 'package:flutter/material.dart';
import 'package:gradu_go/src/core/dependency_injection/dependency_injection.dart';
import 'package:gradu_go/src/domain/use_case/get_events_use_case.dart';
import 'package:gradu_go/src/domain/use_case/get_partners_use_case.dart';
import 'package:gradu_go/src/helpers/events_list.dart';
import 'package:gradu_go/src/helpers/partners_list.dart';
import 'package:gradu_go/src/helpers/repository.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

final class MainFragment extends StatefulWidget {
  @override
  _MainFragmentState createState() => _MainFragmentState();
}

final class _MainFragmentState extends State<MainFragment> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final TextEditingController _searchedPartnerTEC = TextEditingController();

  @override
  void initState() {
    super.initState();

    Intl.defaultLocale = 'pt_BR';
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: RefreshIndicator(
          onRefresh: () => _onRefresh(),
          child: Column(
            children: <Widget>[
              _buildEventsList(),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: Repository.events.isNotEmpty
                      ? const EdgeInsets.only(
                          right: Util.defaultPadding,
                          bottom: Util.defaultPadding,
                          left: Util.defaultPadding,
                        )
                      : const EdgeInsets.all(Util.defaultPadding),
                  child: Column(
                    children: [
                      _buildCityDropDown(),
                      _buildSegmentDropDown(),
                      Expanded(child: _buildPartnersList()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFabSearch(),
      );

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      Repository.events = [];
      Repository.partners = [];
      Repository.allPartners = [];
    });

    return;
  }

  Widget _buildEventsList() {
    if (Repository.events.isEmpty) {
      return FutureBuilder(
        future: dependencyManager<GetEventsUseCase>().invoke(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Repository.events = snapshot.data ?? [];

            if (snapshot.hasError ||
                !snapshot.hasData ||
                Repository.events.isEmpty) {
              return Container();
            }

            if (Repository.events.isEmpty) return Container();

            return Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(child: EventsList(Repository.events)),
                    const Divider(),
                  ],
                ),
              ),
            );
          }

          return Container();
        },
      );
    } else {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: EventsList(Repository.events)),
              const Divider(),
            ],
          ),
        ),
      );
    }
  }

  Column _buildCityDropDown() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Util.buildBoldText('Cidade'),
          DropdownButton(
            isExpanded: true,
            value: Util.isNullOrEmpty(Repository.currentCity)
                ? Repository.cities[0]
                : Repository.currentCity,
            items: <String>[...Repository.cities]
                .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ),
                )
                .toList(),
            onChanged: (value) => _onCityMenuItemClick(value!),
          ),
        ],
      );

  void _onCityMenuItemClick(String city) => setState(() {
        Repository.filterType = FilterType.citySegment;
        Repository.currentCity = city == Repository.cities[0] ? null : city;
        Repository.partners = [];
        Repository.searchedPartner = null;
      });

  Column _buildSegmentDropDown() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Util.buildBoldText('Segmento'),
          DropdownButton(
            isExpanded: true,
            value: Util.isNullOrEmpty(Repository.currentSegment)
                ? Repository.segments[0]
                : Repository.currentSegment,
            items: <String>[...Repository.segments]
                .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ),
                )
                .toList(),
            onChanged: (value) => _onSegmentMenuItemClick(value!),
          ),
        ],
      );

  void _onSegmentMenuItemClick(String segment) => setState(() {
        Repository.filterType = FilterType.citySegment;
        Repository.currentSegment =
            segment == Repository.segments[0] ? null : segment;
        Repository.partners = [];
        Repository.searchedPartner = null;
      });

  Widget _buildPartnersList() => Repository.partners.isNotEmpty
      ? PartnersList(Repository.partners)
      : FutureBuilder(
          future: Repository.filterType == FilterType.citySegment
              ? dependencyManager<GetPartnersUseCase>().invoke(
                  city: Repository.currentCity,
                  segment: Repository.currentSegment,
                )
              : dependencyManager<GetPartnersUseCase>()
                  .invoke(name: Repository.searchedPartner),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }

            final shouldRequestAllPartnersFromCitySegment =
                Repository.filterType == FilterType.citySegment &&
                    Util.isNullOrEmpty(Repository.currentCity) &&
                    Util.isNullOrEmpty(Repository.currentSegment);

            final shouldRequestAllPartnersFromName =
                Repository.filterType == FilterType.name &&
                    Util.isNullOrEmpty(Repository.searchedPartner);

            if (shouldRequestAllPartnersFromCitySegment ||
                shouldRequestAllPartnersFromName) {
              Repository.allPartners = snapshot.data ?? [];
              Repository.partners = Repository.allPartners;
            } else {
              Repository.partners = snapshot.data ?? [];
            }

            if (snapshot.hasError ||
                !snapshot.hasData ||
                Repository.partners.isEmpty) {
              return Center(
                child: Util.buildBoldText('Nenhum parceiro encontrado'),
              );
            }

            return PartnersList(Repository.partners);
          },
        );

  FloatingActionButton _buildFabSearch() =>
      Util.isNullOrEmpty(Repository.searchedPartner)
          ? FloatingActionButton(
              onPressed: _onFilterPartnerClick,
              child: const Icon(Icons.search),
            )
          : FloatingActionButton(
              onPressed: () => setState(() {
                Repository.partners = [];
                Repository.searchedPartner = null;
                _searchedPartnerTEC.text = '';
              }),
              child: const Icon(Icons.cancel),
            );

  Future<void> _onFilterPartnerClick() => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Pesquisar parceiro'),
          content: TextFormField(
            autofocus: true,
            controller: _searchedPartnerTEC,
            decoration: InputDecoration(
              labelText: 'Parceiro',
              hintText: 'Ex.: Celebra Clu',
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => _searchedPartnerTEC.text = '',
              ),
            ),
            onFieldSubmitted: (value) => _onSearchPartnerClick(context),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Pesquisar'),
              onPressed: () => _onSearchPartnerClick(context),
            ),
          ],
        ),
      );

  void _onSearchPartnerClick(BuildContext context) {
    Navigator.of(context).pop();

    if (_searchedPartnerTEC.text.isEmpty) return;

    setState(() {
      Repository.filterType = FilterType.name;
      Repository.partners = [];
      Repository.searchedPartner = _searchedPartnerTEC.text;
      Repository.currentCity = null;
      Repository.currentSegment = null;
    });
  }
}
