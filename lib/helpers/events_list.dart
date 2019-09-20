import 'package:celebra_club/domain/event.dart';
import 'package:celebra_club/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class EventsList extends StatelessWidget {
  final List<Event> _eventsList;

  EventsList(this._eventsList);

  @override
  Widget build(BuildContext context) => new Swiper(
      itemCount: _eventsList.length,
      itemBuilder: (BuildContext context, int index) =>
          Stack(fit: StackFit.expand, children: <Widget>[
            Container(
                padding: EdgeInsets.all(8),
                child: Center(child: CircularProgressIndicator())),
            SizedBox.expand(
                child:
//                FadeInImage.memoryNetwork(
//                    placeholder: kTransparentImage,
//                    image: _eventsList[index].flyer,
//                    fit: BoxFit.cover)
                    Image.network(_eventsList[index].flyer, fit: BoxFit.cover))
          ]),
      onTap: (index) => _onItemClick(context, _eventsList[index]),
      pagination: SwiperPagination(),
      loop: true,
      viewportFraction: 0.8,
      scale: 0.9);

  _onItemClick(BuildContext context, Event event) => Navigator.push(context,
      MaterialPageRoute(builder: (context) => EventPage(event: event)));
}
