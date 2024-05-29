import 'package:flutter/material.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:transparent_image/transparent_image.dart';

final class PartnerPage extends StatefulWidget {
  const PartnerPage({super.key, required this.partner});

  final Partner partner;

  @override
  State<StatefulWidget> createState() => _PartnerPageState();
}

final class _PartnerPageState extends State<PartnerPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Parceiro')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(flex: 5, child: _buildLogo()),
            Util.buildSpaceBetweenWidgets(),
            Text(
              widget.partner.name.toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Expanded(
              flex: 6,
              child: ListView(
                padding: const EdgeInsets.all(Util.defaultPadding),
                shrinkWrap: true,
                children: [
                  _buildSegment(widget.partner.segments),
                  _buildDiscount(widget.partner.discount),
                  _buildContact(widget.partner.phone),
                  Util.buildExternals(
                    context,
                    facebook: widget.partner.facebook,
                    instagram: widget.partner.instagram,
                    maps: widget.partner.address,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Stack _buildLogo() => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Center(child: CircularProgressIndicator()),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: widget.partner.logo,
            fit: BoxFit.fitHeight,
          ),
        ],
      );

  Widget _buildSegment(String? segment) => Util.isNullOrEmpty(segment)
      ? Container()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Util.buildBoldText('SEGMENTO'),
            Util.buildJustifiedText(segment!),
            Util.buildSpaceBetweenWidgets(),
          ],
        );

  Widget _buildDiscount(String? discount) => Util.isNullOrEmpty(discount)
      ? Container()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Util.buildBoldText('DESCONTO'),
            Text(discount!),
            Util.buildSpaceBetweenWidgets(),
          ],
        );

  Widget _buildContact(String? contact) => Util.isNullOrEmpty(contact)
      ? Container()
      : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Util.buildBoldText('TELEFONE'),
            Util.buildJustifiedText(contact!),
            Util.buildSpaceBetweenWidgets(),
          ],
        );
}
