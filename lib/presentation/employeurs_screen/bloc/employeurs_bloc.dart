import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/employeurs_model.dart';
part 'employeurs_event.dart';
part 'employeurs_state.dart';

/// A bloc that manages the state of a Employeurs according to the event that is dispatched to it.
class EmployeursBloc extends Bloc<EmployeursEvent, EmployeursState> {
  EmployeursBloc(EmployeursState initialState) : super(initialState) {
    on<EmployeursInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmployeursInitialEvent event,
    Emitter<EmployeursState> emit,
  ) async {
    emit(state.copyWith(
      profilevalueController: TextEditingController(),
      chatvalueoneController: TextEditingController(),
    ));
  }
}
