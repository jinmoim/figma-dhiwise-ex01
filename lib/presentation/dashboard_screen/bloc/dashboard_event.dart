// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Dashboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardEvent extends Equatable {}

/// Event that is dispatched when the Dashboard widget is first created.
class DashboardInitialEvent extends DashboardEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/api/v1/user/list API.
class CreateListEvent extends DashboardEvent {
  CreateListEvent();

  @override
  List<Object?> get props => [];
}
