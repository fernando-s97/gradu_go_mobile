import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:gradu_go/src/domain/model/establishment.dart';
import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/domain/use_case/get_establishments_use_case.dart';
import 'package:gradu_go/src/domain/use_case/get_events_use_case.dart';
import 'package:gradu_go/src/presentation/home/home_event.dart';
import 'package:gradu_go/src/presentation/home/home_state.dart';

final class HomeViewModelImpl implements HomeViewModel {
  HomeViewModelImpl({
    required GetEventsUseCase getEventsUseCase,
    required GetEstablishmentsUseCase getEstablishmentsUseCase,
  })  : _getEventsUseCase = getEventsUseCase,
        _getEstablishmentsUseCase = getEstablishmentsUseCase;

  final GetEventsUseCase _getEventsUseCase;
  final GetEstablishmentsUseCase _getEstablishmentsUseCase;

  @override
  ValueListenable<HomeState> get stateListenable => _stateNotifier;
  final ValueNotifier<HomeState> _stateNotifier = ValueNotifier(
    const HomeState(
      isLoading: false,
      events: [],
      establishments: [],
    ),
  );

  @override
  Stream<HomeEvent> get eventStream => _eventStreamController.stream;
  final StreamController<HomeEvent> _eventStreamController = StreamController();

  @override
  Future<void> onOpened() async {
    _stateNotifier.value = _stateNotifier.value.copyWith(isLoading: true);

    try {
      _stateNotifier.value = await _refreshStateData();
    } catch (error, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      _eventStreamController.add(HomeEventHandleError(error));
    } finally {
      _stateNotifier.value = _stateNotifier.value.copyWith(isLoading: false);
    }
  }

  Future<HomeState> _refreshStateData() async {
    final results = await (
      _getEventsUseCase.execute(),
      _getEstablishmentsUseCase.execute(),
    ).wait;

    return _stateNotifier.value.copyWith(
      events: results.$1,
      establishments: results.$2,
    );
  }

  @override
  Future<void> onRefresh() async {
    _stateNotifier.value = _stateNotifier.value.copyWith(isLoading: true);

    try {
      _stateNotifier.value = await _refreshStateData();
    } catch (error, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      _eventStreamController.add(HomeEventHandleError(error));
    } finally {
      _stateNotifier.value = _stateNotifier.value.copyWith(isLoading: false);
    }
  }

  @override
  void onEventPressed({required Event event}) {
    _eventStreamController.add(HomeEventOpenEventDetails(event: event));
  }

  @override
  void onEstablishmentPressed({required Establishment establishment}) {
    _eventStreamController
        .add(HomeEventOpenEstablishmentDetails(establishment: establishment));
  }

  @override
  Future<void> onClosed() async {
    _stateNotifier.dispose();
    await _eventStreamController.close();
  }
}

abstract interface class HomeViewModel {
  ValueListenable<HomeState> get stateListenable;

  Stream<HomeEvent> get eventStream;

  Future<void> onOpened();

  Future<void> onRefresh();

  void onEventPressed({required Event event});

  void onEstablishmentPressed({required Establishment establishment});

  Future<void> onClosed();
}
