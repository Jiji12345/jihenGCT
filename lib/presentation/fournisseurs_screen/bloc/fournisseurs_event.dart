part of 'fournisseurs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fournisseurs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class FournisseursEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fournisseurs widget is first created.
class FournisseursInitialEvent extends FournisseursEvent {
  @override
  List<Object?> get props => [];
}
