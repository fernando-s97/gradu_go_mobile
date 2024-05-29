import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final class Util {
  static const urlServer = 'http://31.220.60.143/celebraclubdigital';
  static const urlSiteCompany = 'http://celebraformaturas.com';
  static const urlMaps = 'https://www.google.com.br/maps/place';

  static const usualDateFormat = 'dd/MM/yyyy';
  static const shortDateFormat = 'dd/MM';
  static const digitalIdCardDateFormat = 'MMMM/yyyy';
  static const hourFormat = "HH'h'mm";

  static const baseImagePath = 'assets/images';
  static const facebookImagePath = '${Util.baseImagePath}/facebook_icon.png';
  static const instagramImagePath = '${Util.baseImagePath}/instagram_icon.png';
  static const mapsImagePath = '${Util.baseImagePath}/maps_icon.png';
  static const ticketImagePath = '${Util.baseImagePath}/ticket_icon.png';
  static const whatsappImagePath = '${Util.baseImagePath}/whats_icon.png';
  static const emailImagePath = '${Util.baseImagePath}/email_icon.jpg';
  static const phoneImagePath = '${Util.baseImagePath}/phone_icon.png';
  static const companyLogoImagePath = '${Util.baseImagePath}/company_logo.png';
  static const digitalIdCardFrontImagePath =
      '${Util.baseImagePath}/digital_id_card_front.jpg';
  static const digitalIdCardBackImagePath =
      '${Util.baseImagePath}/digital_id_card_back.jpg';

  static const defaultPadding = 16.0;
  static const defaultMarginRight = 10.0;
  static const defaultMarginBottom = 25.0;
  static const squareIcon = 60.0;
  static const smallSquareIcon = 20.0;

  static const cityParameter = 'city';
  static const segmentParameter = 'segment';

  static const allCitiesKey = 'Todas';
  static const allSegmentsKey = 'Todos';

  static Future<void> openURL(BuildContext context, String url) async {
    final effectiveUrl =
        Uri.dataFromString(Platform.isIOS ? url.replaceAll(' ', '%20') : url);

    if (await canLaunchUrl(effectiveUrl)) {
      await launchUrl(effectiveUrl);
    } else {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Falha carregar aplicação'),
            content: const Text('Não foi possível abrir a aplicação necessária. '
                'Verifique se ela está instalada.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      }
    }
  }

  static Padding buildSpaceBetweenWidgets({
    double bottom = Util.defaultMarginBottom,
  }) =>
      Padding(padding: EdgeInsets.only(bottom: bottom));

  static GestureDetector buildExternalWithDescription(
    BuildContext context,
    String url,
    String pathImg,
    String title,
    String subtitle,
  ) =>
      GestureDetector(
        onTap: () => Util.openURL(context, url),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Util.buildImage(pathImg),
            const Padding(
              padding: EdgeInsets.only(right: Util.defaultMarginRight),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Util.buildJustifiedText(subtitle),
                ],
              ),
            ),
          ],
        ),
      );

  static GestureDetector buildCompanyLogo(BuildContext context) =>
      GestureDetector(
        onTap: () => Util.openURL(context, Util.urlSiteCompany),
        child: Image.asset(Util.companyLogoImagePath, fit: BoxFit.fitHeight),
      );

  static Image buildImage(String imagePath, {double size = Util.squareIcon}) =>
      Image(image: AssetImage(imagePath), width: size, height: size);

  static Text buildBoldText(String text) => Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontWeight: FontWeight.bold),
      );

  static Text buildJustifiedText(String text) =>
      Text(text, textAlign: TextAlign.justify);

  static bool isNullOrEmpty(String? string) => ['', null].contains(string);

  static Row buildExternals(
    BuildContext context, {
    String? facebook,
    String? instagram,
    String? maps,
    bool showTicket = false,
  }) {
    final showFacebook = !isNullOrEmpty(facebook);
    final showInstagram = !isNullOrEmpty(instagram);
    final showAddress = !isNullOrEmpty(maps);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        if (showTicket) Util._buildTicketExternal(context),
        if (showFacebook) Util._buildFacebookExternal(context, facebook!),
        if (showInstagram) Util._buildInstagramExternal(context, instagram!),
        if (showAddress) Util._buildMapsExternal(context, maps!),
      ],
    );
  }

  static Widget _buildFacebookExternal(
    BuildContext context,
    String facebook,
  ) =>
      Util.buildExternal(context, facebook, Util.facebookImagePath);

  static Widget _buildInstagramExternal(
    BuildContext context,
    String instagram,
  ) =>
      Util.buildExternal(context, instagram, Util.instagramImagePath);

  static Widget _buildMapsExternal(BuildContext context, String address) =>
      Util.buildExternal(
        context,
        '${Util.urlMaps}/${Uri.encodeFull(address)}',
        Util.mapsImagePath,
      );

  static Widget _buildTicketExternal(BuildContext context) =>
      Util.buildExternal(
        context,
        'http://queroingresso.com/celebra',
        Util.ticketImagePath,
      );

  static GestureDetector buildExternal(
    BuildContext context,
    String url,
    String pathImg,
  ) =>
      GestureDetector(
        onTap: () => Util.openURL(context, url),
        child: Util.buildImage(pathImg),
      );
}
