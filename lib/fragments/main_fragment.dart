import 'package:celebra_club/dao/event_dao.dart';
import 'package:celebra_club/dao/partner_dao.dart';
import 'package:celebra_club/helpers/events_list.dart';
import 'package:celebra_club/helpers/partners_list.dart';
import 'package:celebra_club/helpers/repository.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class MainFragment extends StatefulWidget {
  @override
  _MainFragmentState createState() => _MainFragmentState();
}

class _MainFragmentState extends State<MainFragment> {
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
      resizeToAvoidBottomPadding: false,
      body: RefreshIndicator(
        onRefresh: () => _onRefresh(),
        child: Column(children: <Widget>[
          _buildEventsList(),
          Expanded(
              flex: 2,
              child: Padding(
                  padding: Repository.events.isNotEmpty
                      ? const EdgeInsets.only(
                          right: Util.DEFAULT_PADDING,
                          bottom: Util.DEFAULT_PADDING,
                          left: Util.DEFAULT_PADDING)
                      : const EdgeInsets.all(Util.DEFAULT_PADDING),
                  child: Column(children: [
                    _buildCityDropDown(),
                    _buildSegmentDropDown(),
                    Expanded(child: _buildPartnersList())
                  ])))
        ]),
      ),
      floatingActionButton: _buildFabSearch());

  _onRefresh() async {
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      Repository.events = [];
      Repository.partners = [];
      Repository.allPartners = [];
    });

    return null;
  }

  _buildEventsList() {
    if (Repository.events.isEmpty) {
      return FutureBuilder(
          future: EventDao.read(),
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
                          Divider()
                        ])),
              );
            }

            return Container();
          });
    } else {
      return Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(child: EventsList(Repository.events)),
                  Divider()
                ])),
      );
    }
  }

  _buildCityDropDown() =>
      Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        Util.buildBoldText('Cidade'),
        DropdownButton(
            isExpanded: true,
            value: Util.isNullOrEmpty(Repository.currentCity)
                ? Repository.CITIES[0]
                : Repository.currentCity,
            items: <String>[...Repository.CITIES]
                .map<DropdownMenuItem<String>>((String value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)))
                .toList(),
            onChanged: _onCityMenuItemClick)
      ]);

  _onCityMenuItemClick(String city) => setState(() {
        Repository.filterType = FilterType.CITY_SEGMENT;
        Repository.currentCity = city == Repository.CITIES[0] ? null : city;
        Repository.partners = [];
        Repository.searchedPartner = null;
      });

  _buildSegmentDropDown() =>
      Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        Util.buildBoldText('Segmento'),
        DropdownButton(
            isExpanded: true,
            value: Util.isNullOrEmpty(Repository.currentSegment)
                ? Repository.SEGMENTS[0]
                : Repository.currentSegment,
            items: <String>[...Repository.SEGMENTS]
                .map<DropdownMenuItem<String>>((String value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)))
                .toList(),
            onChanged: _onSegmentMenuItemClick)
      ]);

  _onSegmentMenuItemClick(String segment) => setState(() {
        Repository.filterType = FilterType.CITY_SEGMENT;
        Repository.currentSegment =
            segment == Repository.SEGMENTS[0] ? null : segment;
        Repository.partners = [];
        Repository.searchedPartner = null;
      });

  _buildPartnersList() => Repository.partners.isNotEmpty
      ? PartnersList(Repository.partners)
      : FutureBuilder(
          future: Repository.filterType == FilterType.CITY_SEGMENT
              ? PartnerDao.readByCitySegment(
                  Repository.currentCity, Repository.currentSegment)
              : PartnerDao.read(Repository.searchedPartner),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return Center(child: CircularProgressIndicator());
            }

            var shouldRequestAllPartnersFromCitySegment =
                Repository.filterType == FilterType.CITY_SEGMENT &&
                    Util.isNullOrEmpty(Repository.currentCity) &&
                    Util.isNullOrEmpty(Repository.currentSegment);

            var shouldRequestAllPartnersFromName =
                Repository.filterType == FilterType.NAME &&
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
                  child: Util.buildBoldText('Nenhum parceiro encontrado'));
            }

            return PartnersList(Repository.partners);
          });

  _buildFabSearch() => Util.isNullOrEmpty(Repository.searchedPartner)
      ? FloatingActionButton(
          onPressed: _onFilterPartnerClick, child: Icon(Icons.search))
      : FloatingActionButton(
          onPressed: () => setState(() {
                Repository.partners = [];
                Repository.searchedPartner = null;
                _searchedPartnerTEC.text = '';
              }),
          child: Icon(Icons.cancel));

  _onFilterPartnerClick() => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
              title: Text('Pesquisar parceiro'),
              content: TextFormField(
                  autofocus: true,
                  controller: _searchedPartnerTEC,
                  decoration: InputDecoration(
                      labelText: 'Parceiro',
                      hintText: 'Ex.: Celebra Clu',
                      suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () => _searchedPartnerTEC.text = '')),
                  onFieldSubmitted: (value) => _onSearchPartnerClick(context)),
              actions: <Widget>[
                FlatButton(
                    child: const Text('Cancelar'),
                    onPressed: () => Navigator.of(context).pop()),
                FlatButton(
                    child: const Text('Pesquisar'),
                    onPressed: () => _onSearchPartnerClick(context))
              ]));

  _onSearchPartnerClick(context) {
    Navigator.of(context).pop();

    if (_searchedPartnerTEC.text.isEmpty) return;

    setState(() {
      Repository.filterType = FilterType.NAME;
      Repository.partners = [];
      Repository.searchedPartner = _searchedPartnerTEC.text;
      Repository.currentCity = null;
      Repository.currentSegment = null;
    });
  }
}
