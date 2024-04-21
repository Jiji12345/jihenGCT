import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/page_de_garde_model.dart';
part 'page_de_garde_event.dart';
part 'page_de_garde_state.dart';

/// A bloc that manages the state of a PageDeGarde according to the event that is dispatched to it.
class PageDeGardeBloc extends Bloc<PageDeGardeEvent, PageDeGardeState> {
  PageDeGardeBloc(PageDeGardeState initialState) : super(initialState) {
    on<PageDeGardeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageDeGardeInitialEvent event,
    Emitter<PageDeGardeState> emit,
  ) async {}
}
