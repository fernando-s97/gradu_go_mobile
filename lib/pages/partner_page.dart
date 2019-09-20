import 'package:celebra_club/domain/partner.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PartnerPage extends StatefulWidget {
  final Partner partner;

  PartnerPage({Key key, this.partner}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Parceiro')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(flex: 5, child: _buildLogo()),
            Util.buildSpaceBetweenWidgets(),
            Text(widget.partner.name.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title),
            Expanded(
                flex: 6,
                child: ListView(
                    padding: const EdgeInsets.all(Util.DEFAULT_PADDING),
                    shrinkWrap: true,
                    children: [
                      _buildSegment(widget.partner.segments),
                      _buildDiscount(widget.partner.discount),
                      _buildContact(widget.partner.phone),
                      Util.buildExternals(context,
                          facebook: widget.partner.facebook,
                          instagram: widget.partner.instagram,
                          maps: widget.partner.address)
                    ]))
          ]));

  _buildLogo() => Stack(fit: StackFit.expand, children: <Widget>[
        Center(child: CircularProgressIndicator()),
        FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: widget.partner.logo,
            fit: BoxFit.fitHeight)
      ]);

  _buildSegment(segment) => Util.isNullOrEmpty(segment)
      ? Container()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Util.buildBoldText('SEGMENTO'),
              Util.buildJustifiedText(segment),
              Util.buildSpaceBetweenWidgets()
            ]);

  _buildDiscount(discount) => Util.isNullOrEmpty(discount)
      ? Container()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Util.buildBoldText('DESCONTO'),
              Text(widget.partner.discount),
              Util.buildSpaceBetweenWidgets()
            ]);

  _buildContact(contact) => Util.isNullOrEmpty(contact)
      ? Container()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Util.buildBoldText('TELEFONE'),
              Util.buildJustifiedText(widget.partner.phone),
              Util.buildSpaceBetweenWidgets()
            ]);
}
