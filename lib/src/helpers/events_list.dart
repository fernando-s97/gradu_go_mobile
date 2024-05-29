import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/presentation/event_details/event_page.dart';

final class EventsList extends StatelessWidget {
  const EventsList(this._eventsList);
  final List<Event> _eventsList;

  @override
  Widget build(BuildContext context) => Swiper(
        itemCount: _eventsList.length,
        itemBuilder: (BuildContext context, int index) => Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Center(child: CircularProgressIndicator()),
            ),
            SizedBox.expand(
              child:
//                FadeInImage.memoryNetwork(
//                    placeholder: kTransparentImage,
//                    image: _eventsList[index].flyer,
//                    fit: BoxFit.cover)
                  Image.network(_eventsList[index].flyer, fit: BoxFit.cover),
            ),
          ],
        ),
        onTap: (index) => _onItemClick(context, _eventsList[index]),
        pagination: const SwiperPagination(),
        viewportFraction: 0.8,
        scale: 0.9,
      );

  Future<void> _onItemClick(BuildContext context, Event event) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EventPage(event: event)),
      );
}
