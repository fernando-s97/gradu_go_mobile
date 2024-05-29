import 'package:flutter/material.dart';
import 'package:gradu_go/src/helpers/util.dart';

final class BecomePartnerFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(Util.defaultPadding),
        shrinkWrap: true,
        children: [
          _buildText(),
          _buildExternals(context),
          Util.buildCompanyLogo(context),
        ],
      );

  Column _buildText() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Util.buildBoldText('SEJA UMA EMPRESA PARCEIRA'),
          Util.buildSpaceBetweenWidgets(),
          const Text(
            'Envie sua mensagem e seja mais um parceiro do nosso clube de vantagens.',
          ),
          Util.buildSpaceBetweenWidgets(),
        ],
      );

  Row _buildExternals(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () => Util.openURL(
              context,
              'mailto:nilton.comark@celebraformaturas.com.br?subject=Celebra Club - Desejo me tornar parceiro',
            ),
            child: Util.buildImage(Util.emailImagePath),
          ),
          GestureDetector(
            onTap: () => Util.openURL(context, 'tel://+55012996270806'),
            child: Util.buildImage(Util.phoneImagePath),
          ),
        ],
      );
}
