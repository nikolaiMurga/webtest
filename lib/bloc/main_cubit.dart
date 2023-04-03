import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:webtest/models/impl/page_a.dart';
import 'package:webtest/models/impl/page_b.dart';

part 'main_state.dart';

@injectable
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());


  void setupPageA() {
    emit(MainLoading());
    final PageA a = PageA(nameOfThePage: 'PageA', someText: 'bla-bla-bla');
    emit(MainSucceed(pageA: a));
  }

  void setupPageB(){
    emit(MainLoading());
    final PageB b = PageB(nameOfThePage: 'PageB', someText: 'bla-bla-bla');
    emit(MainSucceed(pageB: b));
  }

  void setupPages(){
    emit(MainLoading());
    final PageA a = PageA(nameOfThePage: 'PageA', someText: 'bla-bla-bla');
    final PageB b = PageB(nameOfThePage: 'PageB', someText: 'bla-bla-bla');
    emit(MainSucceed(pageA: a, pageB: b));
  }
}
