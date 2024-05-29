import 'package:flutter/material.dart';
import 'package:gradu_go/src/helpers/util.dart';

final class AboutFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(Util.defaultPadding),
        shrinkWrap: true,
        children: [
          _buildAbout(),
          _buildHowToParticipate(),
          _buildDoubts(context),
          Util.buildCompanyLogo(context),
        ],
      );

  Column _buildAbout() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Util.buildJustifiedText(
            'A Celebra é uma empresa no ramo de formaturas e eventos, líder de mercado nas regiões que atende, tendo mais de 20.000 clientes em atendimento. Hoje a formatura não é mais somente “uma festa”, ela é um conjunto de eventos e situações, que começam desde o primeiro ano de faculdade, e que gera consumo dos formandos em diversos segmentos do mercado, diretamente e indiretamente. Com esse projeto, estamos dando ao formando, benefícios exclusivos, que agregam ao pacote de formatura adquirido, como descontos em locais de alimentação, entretenimento, estética, compras, enfim, uma infinidade de empresas, que tem nossa afirmação de qualidade.\n',
          ),
          Util.buildJustifiedText(
            'Com esse projeto, estamos dando ao formando, benefícios exclusivos, que agregam ao pacote de formatura adquirido, como descontos em locais de alimentação, entretenimento, estética, compras, enfim, uma infinidade de empresas, que tem nossa afirmação de qualidade.',
          ),
          Util.buildSpaceBetweenWidgets(),
        ],
      );

  Column _buildHowToParticipate() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Util.buildBoldText('COMO PARTICIPAR?'),
          Util.buildSpaceBetweenWidgets(),
          Util.buildJustifiedText(
            'É simples, todo formando pagante da Celebra, tem acesso ao seu cartão digital e com ele poderá desfrutar dos descontos oferecidos pelas empresas membro do Celebra Club.',
          ),
          Util.buildSpaceBetweenWidgets(),
        ],
      );

  Widget _buildDoubts(BuildContext context) => Util.buildExternalWithDescription(
        context,
        'whatsapp://send?phone=+55012996270806',
        Util.whatsappImagePath,
        'DÚVIDAS?',
        'Entre em contato com nosso DAF',
      );
}
