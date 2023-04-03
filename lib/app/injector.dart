import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:webtest/app/injector.config.dart';

final inject = GetIt.instance;

@injectableInit
Future<void> setupInjector() async => inject.init();
