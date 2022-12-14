import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools/core/base_widget/base_statful_widget.dart';
import 'package:schools/presentation/bloc/login/login_bloc.dart';
import 'package:schools/presentation/ui/authentication/login/widgets/login_content_widget.dart';
import 'package:schools/presentation/ui/authentication/verify/verify_screen.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({super.key});

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreen> {
  TextEditingController countryController = TextEditingController();

  @override
  Widget baseBuild(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginClearButtonState) {
            _onLoginClearButtonState();
          } else if (state is LoginConfirmButtonState) {
            _onLoginConfirmButtonState();
          }
        },
        builder: (context, state) {
          return LoginContentWidget(
            countryController: countryController,
          );
        },
      ),
    );
  }

  void _onLoginConfirmButtonState() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const VerifyScreen()));
  }

  void _onLoginClearButtonState() {
    countryController.clear();
  }
}
