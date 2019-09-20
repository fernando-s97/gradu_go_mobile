import 'package:celebra_club/helpers/util.dart';
import 'package:intl/intl.dart';

class Event {
  static const KEY = 'event';
  static const FLYER_KEY = 'flyer';
  static const NAME_KEY = 'name';
  static const BEGIN_KEY = 'begin';
  static const END_KEY = 'end';
  static const ADDRESS_KEY = 'address';
  static const DISCOUNT_KEY = 'discount';
  static const FACEBOOK_KEY = 'facebook';

  String flyer;
  String name;
  DateTime begin;
  DateTime end;
  String address;
  String discount;
  String facebook;

  Event(this.flyer, this.name, this.begin, this.address, this.discount,
      this.facebook);

  Event.fromJson(Map<String, dynamic> json)
      : flyer = json[Event.FLYER_KEY],
        name = json[Event.NAME_KEY],
        begin = DateTime.parse(json[Event.BEGIN_KEY]),
        end = DateTime.parse(json[Event.END_KEY]),
        address = json[Event.ADDRESS_KEY],
        discount = json[Event.DISCOUNT_KEY],
        facebook = json[Event.FACEBOOK_KEY];

  Map<String, dynamic> toJson() => {
        Event.FLYER_KEY: flyer,
        Event.NAME_KEY: name,
        Event.BEGIN_KEY: DateFormat(Util.USUAL_DATE_FORMAT).format(begin),
        Event.END_KEY: DateFormat(Util.USUAL_DATE_FORMAT).format(end),
        Event.ADDRESS_KEY: address,
        Event.DISCOUNT_KEY: discount,
        Event.FACEBOOK_KEY: facebook
      };
}
