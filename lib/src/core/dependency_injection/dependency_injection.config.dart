// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/gradu_go_api.dart'
    as _i446;
import 'package:gradu_go/src/data/repository/event_repository.dart' as _i17;
import 'package:gradu_go/src/data/repository/graduate_repository.dart' as _i754;
import 'package:gradu_go/src/data/repository/partner_repository.dart' as _i224;
import 'package:gradu_go/src/domain/repository/establishment_repository.dart'
    as _i14;
import 'package:gradu_go/src/domain/repository/event_repository.dart' as _i360;
import 'package:gradu_go/src/domain/repository/graduate_repository.dart'
    as _i731;
import 'package:gradu_go/src/domain/use_case/authenticate_graduate_use_case.dart'
    as _i1037;
import 'package:gradu_go/src/domain/use_case/get_establishments_use_case.dart'
    as _i596;
import 'package:gradu_go/src/domain/use_case/get_event_details_use_case.dart'
    as _i353;
import 'package:gradu_go/src/domain/use_case/get_events_use_case.dart' as _i767;
import 'package:gradu_go/src/domain/use_case/get_graduate_details_use_case.dart'
    as _i806;
import 'package:gradu_go/src/domain/use_case/get_partner_details_use_case.dart'
    as _i194;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i446.GraduGoApi>(() => _i446.GraduGoApi());
    gh.lazySingleton<_i14.EstablishmentRepository>(
        () => _i224.PartnerRepositoryImpl(graduGoApi: gh<_i446.GraduGoApi>()));
    gh.lazySingleton<_i360.EventRepository>(
        () => _i17.EventRepositoryImpl(graduGoApi: gh<_i446.GraduGoApi>()));
    gh.lazySingleton<_i731.GraduateRepository>(
        () => _i754.GraduateRepositoryImpl(graduGoApi: gh<_i446.GraduGoApi>()));
    gh.lazySingleton<_i194.GetPartnerDetailsUseCase>(() =>
        _i194.GetPartnerDetailsUseCase(
            establishmentRepository: gh<_i14.EstablishmentRepository>()));
    gh.lazySingleton<_i596.GetEstablishmentsUseCase>(() =>
        _i596.GetEstablishmentsUseCase(
            establishmentRepository: gh<_i14.EstablishmentRepository>()));
    gh.lazySingleton<_i1037.AuthenticateGraduateUseCase>(() =>
        _i1037.AuthenticateGraduateUseCase(
            graduateRepository: gh<_i731.GraduateRepository>()));
    gh.lazySingleton<_i806.GetGraduateDetailsUseCase>(() =>
        _i806.GetGraduateDetailsUseCase(
            graduateRepository: gh<_i731.GraduateRepository>()));
    gh.lazySingleton<_i353.GetEventDetailsUseCase>(() =>
        _i353.GetEventDetailsUseCase(
            eventRepository: gh<_i360.EventRepository>()));
    gh.lazySingleton<_i767.GetEventsUseCase>(() =>
        _i767.GetEventsUseCase(eventRepository: gh<_i360.EventRepository>()));
    return this;
  }
}
