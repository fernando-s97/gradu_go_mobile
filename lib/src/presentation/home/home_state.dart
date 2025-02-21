import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gradu_go/src/domain/model/establishment.dart';
import 'package:gradu_go/src/domain/model/event.dart';

part 'home_state.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required Iterable<Event>? events,
    required Iterable<Establishment>? establishments,
  }) = _HomeState;
}
