part of 'main_cubit.dart';

abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}

class MainLoading extends MainState {
  @override
  List<Object> get props => [];
}

class MainSucceed extends MainState {
  final PageA? pageA;
  final PageB? pageB;

  const MainSucceed({this.pageA, this.pageB});

  @override
  List<Object?> get props => [];
}

class MainFailed extends MainState {
  @override
  List<Object> get props => [];
}
