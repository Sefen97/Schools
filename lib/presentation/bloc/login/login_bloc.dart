import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginClearButtonEvent>(_onLoginClearButtonEvent);
  }

  FutureOr<void> _onLoginClearButtonEvent(
      LoginEvent event, Emitter<LoginState> emit) {
    emit(LoginClearButtonState());
  }
}
