part of 'employeurs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Employeurs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class EmployeursEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Employeurs widget is first created.
class EmployeursInitialEvent extends EmployeursEvent {
  @override
  List<Object?> get props => [];
}
