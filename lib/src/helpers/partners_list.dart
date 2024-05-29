import 'package:flutter/material.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/presentation/partner_details/partner_page.dart';

final class PartnersList extends StatelessWidget {
  const PartnersList(this._partnersList);
  final List<Partner> _partnersList;

  @override
  Widget build(BuildContext context) => ListView.builder(
        shrinkWrap: true,
        itemCount: _partnersList.length,
        itemBuilder: _buildPartnerItem,
      );

  Widget _buildPartnerItem(BuildContext context, int index) => Card(
        elevation: 3,
        child: ListTile(
          leading: _buildLogo(index),
          title: Text(_partnersList[index].name),
          subtitle: Text(_partnersList[index].segments ?? ''),
          onTap: () => _onPartnerClick(context, index),
        ),
      );

  Stack _buildLogo(int index) => Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const CircularProgressIndicator(),
          ),
//        FadeInImage.memoryNetwork(
//            placeholder: kTransparentImage,
//            image: _partnersList[index].logo,
//            fit: BoxFit.fitWidth),
          Image.network(_partnersList[index].logo, fit: BoxFit.fitWidth),
        ],
      );

  Future<void> _onPartnerClick(BuildContext context, int index) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PartnerPage(partner: _partnersList[index]),
        ),
      );
}
