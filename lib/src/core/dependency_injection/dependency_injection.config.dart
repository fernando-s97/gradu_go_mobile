// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/gradu_go_api.dart'
    as _i3;
import 'package:gradu_go/src/data/repository/event_repository.dart' as _i5;
import 'package:gradu_go/src/data/repository/graduate_repository.dart' as _i9;
import 'package:gradu_go/src/data/repository/partner_repository.dart' as _i7;
import 'package:gradu_go/src/domain/repository/event_repository.dart' as _i4;
import 'package:gradu_go/src/domain/repository/graduate_repository.dart' as _i8;
import 'package:gradu_go/src/domain/repository/partner_repository.dart' as _i6;
import 'package:gradu_go/src/domain/use_case/authenticate_graduate_use_case.dart'
    as _i10;
import 'package:gradu_go/src/domain/use_case/get_event_details_use_case.dart'
    as _i13;
import 'package:gradu_go/src/domain/use_case/get_events_use_case.dart' as _i12;
import 'package:gradu_go/src/domain/use_case/get_graduate_details_use_case.dart'
    as _i11;
import 'package:gradu_go/src/domain/use_case/get_partner_details_use_case.dart'
    as _i15;
import 'package:gradu_go/src/domain/use_case/get_partners_use_case.dart'
    as _i14;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.GraduGoApi>(() => _i3.GraduGoApi());
    gh.lazySingleton<_i4.EventRepository>(
        () => _i5.EventRepositoryImpl(graduGoApi: gh<_i3.GraduGoApi>()));
    gh.lazySingleton<_i6.PartnerRepository>(
        () => _i7.PartnerRepositoryImpl(graduGoApi: gh<_i3.GraduGoApi>()));
    gh.lazySingleton<_i8.GraduateRepository>(
        () => _i9.GraduateRepositoryImpl(graduGoApi: gh<_i3.GraduGoApi>()));
    gh.lazySingleton<_i10.AuthenticateGraduateUseCase>(() =>
        _i10.AuthenticateGraduateUseCase(
            graduateRepository: gh<_i8.GraduateRepository>()));
    gh.lazySingleton<_i11.GetGraduateDetailsUseCase>(() =>
        _i11.GetGraduateDetailsUseCase(
            graduateRepository: gh<_i8.GraduateRepository>()));
    gh.lazySingleton<_i12.GetEventsUseCase>(() =>
        _i12.GetEventsUseCase(eventRepository: gh<_i4.EventRepository>()));
    gh.lazySingleton<_i13.GetEventDetailsUseCase>(() =>
        _i13.GetEventDetailsUseCase(
            eventRepository: gh<_i4.EventRepository>()));
    gh.lazySingleton<_i14.GetPartnersUseCase>(() => _i14.GetPartnersUseCase(
        partnerRepository: gh<_i6.PartnerRepository>()));
    gh.lazySingleton<_i15.GetPartnerDetailsUseCase>(() =>
        _i15.GetPartnerDetailsUseCase(
            partnerRepository: gh<_i6.PartnerRepository>()));
    return this;
  }
}
