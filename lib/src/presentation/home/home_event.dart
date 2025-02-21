import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gradu_go/src/domain/model/establishment.dart';
import 'package:gradu_go/src/domain/model/event.dart';

part 'home_event.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.openEventDetails({required Event event}) =
      HomeEventOpenEventDetails;

  const factory HomeEvent.openEstablishmentDetails({
    required Establishment establishment,
  }) = HomeEventOpenEstablishmentDetails;

  const factory HomeEvent.handleError(Object error) = HomeEventHandleError;
}
