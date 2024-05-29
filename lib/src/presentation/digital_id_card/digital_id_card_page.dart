import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/intl.dart';

final class DigitalIdCard extends StatefulWidget {
  const DigitalIdCard({super.key, required this.graduate});

  final Graduate graduate;

  @override
  _DigitalIdCardState createState() => _DigitalIdCardState();
}

final class _DigitalIdCardState extends State<DigitalIdCard> {
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text('Carteirinha Digital')),
        body: Swiper(
          itemBuilder: (context, index) {
            Widget widget;

            switch (index) {
              case 0:
                widget = _buildFront(context);
              case 1:
                widget = _buildBack();
              default:
                widget = Container();
                break;
            }

            return widget;
          },
          itemCount: 2,
          loop: false,
        ),
      );

  Stack _buildFront(context) => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(Util.digitalIdCardFrontImagePath, fit: BoxFit.fill),
          RotatedBox(
            quarterTurns: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                right: Util.defaultPadding,
                bottom: 10.0,
                left: Util.defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '${widget.graduate.name.toUpperCase()}\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${widget.graduate.program.toUpperCase()}\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${widget.graduate.institution.toUpperCase()} | ${DateFormat(Util.digitalIdCardDateFormat).format(widget.graduate.graduationDate).toUpperCase()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Stack _buildBack() => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(Util.digitalIdCardBackImagePath, fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Código do Cliente: ${widget.graduate.clientCode}'
                        .toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Projeto: ${widget.graduate.project}'.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
