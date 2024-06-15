import 'package:get_it/get_it.dart';
import 'package:gradu_go/src/core/dependency_injection/dependency_injection.config.dart';
import 'package:injectable/injectable.dart';

final dependencyManager = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void configureDependencyManager() => dependencyManager.init();
