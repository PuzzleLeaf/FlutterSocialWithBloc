part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  final int page;
  const HomeState(int _page) : page = _page;

  List<Object> get props => [page];
}

class HomeProfile extends HomeState {
  HomeProfile() : super(0);
}

class HomeConversation extends HomeState {
  HomeConversation() : super(1);
}