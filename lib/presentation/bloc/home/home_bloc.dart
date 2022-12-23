import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools/data/source/local/shared_preferences/shared_preferences_manager.dart';
import 'package:schools/use_case/get_language_use_case.dart';
import 'package:schools/use_case/save_language_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SaveLanguageCodeUseCase _saveLanguageCodeUseCase;
  final GetLanguageCodeUseCase _getLanguageCodeUseCase;

  HomeBloc(this._saveLanguageCodeUseCase, this._getLanguageCodeUseCase)
      : super(HomeInitialState()) {
    on<GetHomeEvent>(_onGetHomeEvent);
    on<GetIsFatherEvent>(_onGetIsFatherEvent);
    on<ChangeLanguageEvent>(_onChangeLanguageEvent);
    on<GetLanguageEvent>(_onGetLanguageEvent);
  }

  FutureOr<void> _onGetHomeEvent(GetHomeEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> _onGetIsFatherEvent(
      GetIsFatherEvent event, Emitter<HomeState> emit) async {
    final isFather = await SharedPreferencesManager.getIsFather();
    emit(GetIsFatherState(isFather: isFather!));
  }

  FutureOr<void> _onChangeLanguageEvent(
      ChangeLanguageEvent event, Emitter<HomeState> emit) async {
    bool savedStatus = await _saveLanguageCodeUseCase(event.language);
    if (!savedStatus) {
      emit(SaveLanguageCodeFailedState());
    } else {
      emit(ChangeLanguageSuccessState());
    }
  }

  FutureOr<void> _onGetLanguageEvent(
      GetLanguageEvent event, Emitter<HomeState> emit) async {
    emit(GetLanguageSuccessState(
        language: await _getLanguageCodeUseCase() ?? ''));
  }
}
