import 'package:celebra_club/domain/event.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

class EventPage extends StatefulWidget {
  final Event event;

  EventPage({Key key, this.event}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Evento')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: _buildFlyer(), flex: 2),
            Util.buildSpaceBetweenWidgets(),
            Text(widget.event.name.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title),
            Expanded(
                child: ListView(
                    padding: const EdgeInsets.all(Util.DEFAULT_PADDING),
                    shrinkWrap: true,
                    children: [
                      _buildDateTime(widget.event.begin, widget.event.end),
                      _buildDiscount(widget.event.discount),
                      Util.buildExternals(context,
                          showTicket: true,
                          facebook: widget.event.facebook,
                          maps: widget.event.address)
                    ]),
                flex: 5)
          ]));

  _buildFlyer() => Stack(children: <Widget>[
        Center(child: CircularProgressIndicator()),
        SizedBox.expand(
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: widget.event.flyer,
                fit: BoxFit.fitWidth))
      ]);

  _buildDateTime(begin, end) {
    var dateBegin = DateFormat(Util.SHORT_DATE_FORMAT).format(begin);
    var hourBegin = DateFormat(Util.HOUR_FORMAT).format(begin);

    var dateEnd = DateFormat(Util.SHORT_DATE_FORMAT).format(end);
    var hourEnd = DateFormat(Util.HOUR_FORMAT).format(end);

    var whenString = dateBegin == dateEnd
        ? '$dateBegin | $hourBegin - $hourEnd'
        : '$dateBegin, $hourBegin – $dateEnd, $hourEnd';

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Util.buildBoldText('QUANDO'),
          Util.buildJustifiedText(whenString),
          Util.buildSpaceBetweenWidgets()
        ]);
  }

  _buildDiscount(discount) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Util.buildBoldText('DESCONTO'),
        Text(widget.event.discount),
        Util.buildSpaceBetweenWidgets()
      ]);
}
