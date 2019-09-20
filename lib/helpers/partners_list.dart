import 'package:celebra_club/domain/partner.dart';
import 'package:celebra_club/pages/partner_page.dart';
import 'package:flutter/material.dart';

class PartnersList extends StatelessWidget {
  final List<Partner> _partnersList;

  PartnersList(this._partnersList);

  @override
  Widget build(BuildContext context) => ListView.builder(
      shrinkWrap: true,
      itemCount: _partnersList.length,
      itemBuilder: _buildPartnerItem);

  Widget _buildPartnerItem(BuildContext context, int index) => Card(
      elevation: 3,
      child: ListTile(
          leading: _buildLogo(index),
          title: Text(_partnersList[index].name),
          subtitle: Text(_partnersList[index].segments ?? ''),
          onTap: () => _onPartnerClick(context, index)));

  _buildLogo(int index) => Stack(children: <Widget>[
        Container(
            padding: EdgeInsets.all(8), child: CircularProgressIndicator()),
//        FadeInImage.memoryNetwork(
//            placeholder: kTransparentImage,
//            image: _partnersList[index].logo,
//            fit: BoxFit.fitWidth),
        Image.network(_partnersList[index].logo, fit: BoxFit.fitWidth)
      ]);

  _onPartnerClick(BuildContext context, int index) => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PartnerPage(partner: _partnersList[index])));
}
