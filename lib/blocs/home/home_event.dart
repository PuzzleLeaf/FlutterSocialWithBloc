part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class ChangeProfile extends HomeEvent {
  @override
  List<Object> get props => [];
}

class ChangeConversation extends HomeEvent {
  @override
  List<Object> get props => [];
}