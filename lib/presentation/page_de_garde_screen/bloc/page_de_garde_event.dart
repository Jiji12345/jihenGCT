part of 'page_de_garde_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageDeGarde widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PageDeGardeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PageDeGarde widget is first created.
class PageDeGardeInitialEvent extends PageDeGardeEvent {
  @override
  List<Object?> get props => [];
}
