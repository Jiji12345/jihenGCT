import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/fournisseurs_model.dart';
part 'fournisseurs_event.dart';
part 'fournisseurs_state.dart';

/// A bloc that manages the state of a Fournisseurs according to the event that is dispatched to it.
class FournisseursBloc extends Bloc<FournisseursEvent, FournisseursState> {
  FournisseursBloc(FournisseursState initialState) : super(initialState) {
    on<FournisseursInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FournisseursInitialEvent event,
    Emitter<FournisseursState> emit,
  ) async {
    emit(state.copyWith(
      profilevalueController: TextEditingController(),
      chatvalueoneController: TextEditingController(),
    ));
  }
}
