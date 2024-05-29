import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/intl.dart';

final class Event {
  Event.fromJson(Map<String, dynamic> json)
      : flyer = json[Event.flyerKey] as String,
        name = json[Event.nameKey] as String,
        begin = DateTime.parse(json[Event.beginKey] as String),
        end = DateTime.parse(json[Event.endKey] as String),
        address = json[Event.addressKey] as String,
        discount = json[Event.discountKey] as String,
        facebook = json[Event.facebookKey] as String;

  static const key = 'event';
  static const flyerKey = 'flyer';
  static const nameKey = 'name';
  static const beginKey = 'begin';
  static const endKey = 'end';
  static const addressKey = 'address';
  static const discountKey = 'discount';
  static const facebookKey = 'facebook';

  final String flyer;
  final String name;
  final DateTime begin;
  final DateTime end;
  final String address;
  final String discount;
  final String facebook;

  Map<String, dynamic> toJson() => {
        Event.flyerKey: flyer,
        Event.nameKey: name,
        Event.beginKey: DateFormat(Util.usualDateFormat).format(begin),
        Event.endKey: DateFormat(Util.usualDateFormat).format(end),
        Event.addressKey: address,
        Event.discountKey: discount,
        Event.facebookKey: facebook,
      };
}
