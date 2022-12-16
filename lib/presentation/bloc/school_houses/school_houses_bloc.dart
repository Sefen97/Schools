import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'school_houses_event.dart';

part 'school_houses_state.dart';

class SchoolHousesBloc extends Bloc<SchoolHousesEvent, SchoolHousesState> {
  SchoolHousesBloc() : super(SchoolHousesInitialState()) {
    on<GetSchoolHousesEvent>(_onGetSchoolHousesEvent);
    on<NavigateToNotificationScreenEvent>(_onNavigateToNotificationScreenEvent);
    on<NavigateToAddPointScreenEvent>(_onNavigateToAddPointScreenEvent);
  }

  FutureOr<void> _onGetSchoolHousesEvent(
      GetSchoolHousesEvent event, Emitter<SchoolHousesState> emit) {}

  FutureOr<void> _onNavigateToNotificationScreenEvent(
      NavigateToNotificationScreenEvent event,
      Emitter<SchoolHousesState> emit) {
    emit(NavigateToNotificationScreenState());
  }

  FutureOr<void> _onNavigateToAddPointScreenEvent(
      NavigateToAddPointScreenEvent event, Emitter<SchoolHousesState> emit) {
    emit(NavigateToAddPointScreenState());
  }
}
