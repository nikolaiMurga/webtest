import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webtest/bloc/main_cubit.dart';
import 'package:webtest/presentation/widgets/screen.dart';


class PageBScreen extends StatelessWidget {
  const PageBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          if (state is MainSucceed) {
            return Screen(name: state.pageB?.nameOfThePage ?? 'NO TEXT', text: state.pageB?.someText ?? 'NO TEXT');
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
