import 'package:celebra_club/domain/graduate.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';

class DigitalIdCard extends StatefulWidget {
  final Graduate graduate;

  DigitalIdCard({Key key, this.graduate}) : super(key: key);

  @override
  _DigitalIdCardState createState() => _DigitalIdCardState();
}

class _DigitalIdCardState extends State<DigitalIdCard> {
  @override
  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text('Carteirinha Digital')),
      body: Swiper(
          itemBuilder: (context, index) {
            Widget widget;

            switch (index) {
              case 0:
                widget = _buildFront(context);
                break;
              case 1:
                widget = _buildBack();
                break;
              default:
                widget = Container();
                break;
            }

            return widget;
          },
          itemCount: 2,
          loop: false));

  _buildFront(context) => Stack(fit: StackFit.expand, children: <Widget>[
        Image.asset(Util.DIGITAL_ID_CARD_FRONT_IMG_PATH, fit: BoxFit.fill),
        RotatedBox(
            quarterTurns: 1,
            child: Padding(
                padding: const EdgeInsets.only(
                    right: Util.DEFAULT_PADDING,
                    bottom: 10.0,
                    left: Util.DEFAULT_PADDING),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('${widget.graduate.name.toUpperCase()}\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white)),
                            Text('${widget.graduate.program.toUpperCase()}\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white)),
                            Text(
                                '${widget.graduate.institution.toUpperCase()} | ${DateFormat(Util.DIGITAL_ID_CARD_DATE_FORMAT).format(widget.graduate.graduationDate).toUpperCase()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white))
                          ])
                    ])))
      ]);

  _buildBack() => Stack(fit: StackFit.expand, children: <Widget>[
        Image.asset(Util.DIGITAL_ID_CARD_BACK_IMG_PATH, fit: BoxFit.fill),
        Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Align(
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                          'Código do Cliente: ${widget.graduate.clientCode}'
                              .toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0)),
                      Text('Projeto: ${widget.graduate.project}'.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0))
                    ]))),
      ]);
}
