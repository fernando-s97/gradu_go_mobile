import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Util {
  static const URL_SERVER = 'http://31.220.60.143/celebraclubdigital';
  static const URL_SITE_CELEBRA = 'http://celebraformaturas.com';
  static const URL_MAPS = 'https://www.google.com.br/maps/place';

  static const USUAL_DATE_FORMAT = 'dd/MM/yyyy';
  static const SHORT_DATE_FORMAT = 'dd/MM';
  static const DIGITAL_ID_CARD_DATE_FORMAT = 'MMMM/yyyy';
  static const HOUR_FORMAT = "HH'h'mm";

  static const BASE_IMG_PATH = 'assets/images';
  static const FACEBOOK_IMG_PATH = '${Util.BASE_IMG_PATH}/facebook_icon.png';
  static const INSTAGRAM_IMG_PATH = '${Util.BASE_IMG_PATH}/instagram_icon.png';
  static const MAPS_IMG_PATH = '${Util.BASE_IMG_PATH}/maps_icon.png';
  static const TICKET_IMG_PATH = '${Util.BASE_IMG_PATH}/ticket_icon.png';
  static const WHATSAPP_IMG_PATH = '${Util.BASE_IMG_PATH}/whats_icon.png';
  static const EMAIL_IMG_PATH = '${Util.BASE_IMG_PATH}/email_icon.jpg';
  static const PHONE_IMG_PATH = '${Util.BASE_IMG_PATH}/phone_icon.png';
  static const CELEBRA_CLUB_LOGO_IMG_PATH =
      '${Util.BASE_IMG_PATH}/celebra_club_logo.png';
  static const DIGITAL_ID_CARD_FRONT_IMG_PATH =
      '${Util.BASE_IMG_PATH}/digital_id_card_front.jpg';
  static const DIGITAL_ID_CARD_BACK_IMG_PATH =
      '${Util.BASE_IMG_PATH}/digital_id_card_back.jpg';

  static const DEFAULT_PADDING = 16.0;
  static const DEFAULT_MARGIN_RIGHT = 10.0;
  static const DEFAULT_MARGIN_BOTTOM = 25.0;
  static const SQUARE_ICON = 60.0;
  static const SMALL_SQUARE_ICON = 20.0;

  static const CITY_PARAMETER = 'city';
  static const SEGMENT_PARAMETER = 'segment';

  static const ALL_CITIES_KEY = 'Todas';
  static const ALL_SEGMENTS_KEY = 'Todos';

  static void openURL(BuildContext context, String url) async {
    if (Platform.isIOS) {
      url = url.replaceAll(' ', '%20');
    }

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                  title: Text('Falha carregar aplicação'),
                  content: Text('Não foi possível abrir a aplicação necessária. '
                      'Verifique se ela está instalada.'),
                  actions: <Widget>[
                    FlatButton(
                        child: Text('OK'),
                        onPressed: () => Navigator.of(context).pop())
                  ]));
    }
  }

  static buildSpaceBetweenWidgets(
          {double bottom = Util.DEFAULT_MARGIN_BOTTOM}) =>
      Padding(padding: EdgeInsets.only(bottom: bottom));

  static buildExternalWithDescription(BuildContext context, String url,
          String pathImg, String title, String subtitle) =>
      GestureDetector(
          onTap: () => Util.openURL(context, url),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Util.buildImage(pathImg),
            Padding(padding: EdgeInsets.only(right: Util.DEFAULT_MARGIN_RIGHT)),
            Flexible(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                    Util.buildJustifiedText(subtitle)
                  ]),
            )
          ]));

  static buildCelebraClubImage(BuildContext context) => GestureDetector(
      onTap: () => Util.openURL(context, Util.URL_SITE_CELEBRA),
      child:
          Image.asset(Util.CELEBRA_CLUB_LOGO_IMG_PATH, fit: BoxFit.fitHeight));

  static buildImage(String imagePath, {double size = Util.SQUARE_ICON}) =>
      Image(image: AssetImage(imagePath), width: size, height: size);

  static buildBoldText(String text) => Text(text,
      textAlign: TextAlign.justify,
      style: TextStyle(fontWeight: FontWeight.bold));

  static buildJustifiedText(String text) =>
      Text(text, textAlign: TextAlign.justify);

  static bool isNullOrEmpty(String string) => ['', null].contains(string);

  static buildExternals(BuildContext context,
      {String facebook,
      String instagram,
      String maps,
      bool showTicket = false}) {
    var showFacebook = !isNullOrEmpty(facebook);
    var showInstagram = !isNullOrEmpty(instagram);
    var showAddress = !isNullOrEmpty(maps);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          if (showTicket) Util._buildTicketExternal(context),
          if (showFacebook) Util._buildFacebookExternal(context, facebook),
          if (showInstagram) Util._buildInstagramExternal(context, instagram),
          if (showAddress) Util._buildMapsExternal(context, maps),
        ]);
  }

  static _buildFacebookExternal(BuildContext context, String facebook) =>
      Util.buildExternal(context, facebook, Util.FACEBOOK_IMG_PATH);

  static _buildInstagramExternal(BuildContext context, String instagram) =>
      Util.buildExternal(context, instagram, Util.INSTAGRAM_IMG_PATH);

  static _buildMapsExternal(BuildContext context, String address) =>
      Util.buildExternal(context, '${Util.URL_MAPS}/${Uri.encodeFull(address)}',
          Util.MAPS_IMG_PATH);

  static _buildTicketExternal(context) => Util.buildExternal(
      context, 'http://queroingresso.com/celebra', Util.TICKET_IMG_PATH);

  static buildExternal(BuildContext context, String url, String pathImg) =>
      GestureDetector(
          onTap: () => Util.openURL(context, url),
          child: Util.buildImage(pathImg));
}
