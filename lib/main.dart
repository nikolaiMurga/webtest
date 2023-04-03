import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webtest/app/injector.dart';
import 'package:webtest/bloc/main_cubit.dart';
import 'package:webtest/presentation/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => inject<MainCubit>()..setupPages(),
        child: const HomePage(),
      ),
    );
  }
}
