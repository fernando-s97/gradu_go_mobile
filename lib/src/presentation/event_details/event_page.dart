import 'package:flutter/material.dart';
import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

final class EventPage extends StatefulWidget {
  const EventPage({super.key, required this.event});

  final Event event;

  @override
  State<StatefulWidget> createState() => _EventPageState();
}

final class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Evento')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(flex: 2, child: _buildFlyer()),
            Util.buildSpaceBetweenWidgets(),
            Text(
              widget.event.name.toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Expanded(
              flex: 5,
              child: ListView(
                padding: const EdgeInsets.all(Util.defaultPadding),
                shrinkWrap: true,
                children: [
                  _buildDateTime(widget.event.begin, widget.event.end),
                  _buildDiscount(widget.event.discount),
                  Util.buildExternals(
                    context,
                    showTicket: true,
                    facebook: widget.event.facebook,
                    maps: widget.event.address,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Stack _buildFlyer() => Stack(
        children: <Widget>[
          const Center(child: CircularProgressIndicator()),
          SizedBox.expand(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: widget.event.flyer,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      );

  Column _buildDateTime(DateTime begin, DateTime end) {
    final dateBegin = DateFormat(Util.shortDateFormat).format(begin);
    final hourBegin = DateFormat(Util.hourFormat).format(begin);

    final dateEnd = DateFormat(Util.shortDateFormat).format(end);
    final hourEnd = DateFormat(Util.hourFormat).format(end);

    final whenString = dateBegin == dateEnd
        ? '$dateBegin | $hourBegin - $hourEnd'
        : '$dateBegin, $hourBegin – $dateEnd, $hourEnd';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Util.buildBoldText('QUANDO'),
        Util.buildJustifiedText(whenString),
        Util.buildSpaceBetweenWidgets(),
      ],
    );
  }

  Column _buildDiscount(discount) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Util.buildBoldText('DESCONTO'),
          Text(widget.event.discount),
          Util.buildSpaceBetweenWidgets(),
        ],
      );
}
