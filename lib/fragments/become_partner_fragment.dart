import 'package:celebra_club/helpers/util.dart';
import 'package:flutter/material.dart';

class BecomePartnerFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
          padding: EdgeInsets.all(Util.DEFAULT_PADDING),
          shrinkWrap: true,
          children: [
            _buildText(),
            _buildExternals(context),
            Util.buildCelebraClubImage(context)
          ]);

  _buildText() =>
      Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        Util.buildBoldText('SEJA UMA EMPRESA PARCEIRA'),
        Util.buildSpaceBetweenWidgets(),
        Text(
            'Envie sua mensagem e seja mais um parceiro do nosso clube de vantagens.'),
        Util.buildSpaceBetweenWidgets()
      ]);

  _buildExternals(context) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        GestureDetector(
            onTap: () => Util.openURL(context,
                'mailto:nilton.comark@celebraformaturas.com.br?subject=Celebra Club - Desejo me tornar parceiro'),
            child: Util.buildImage(Util.EMAIL_IMG_PATH)),
        GestureDetector(
            onTap: () => Util.openURL(context, 'tel://+55012996270806'),
            child: Util.buildImage(Util.PHONE_IMG_PATH))
      ]);
}
