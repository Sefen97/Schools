import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools/core/utils/resorces/color_manager.dart';
import 'package:schools/presentation/bloc/side_menu/side_menu_bloc.dart';
import 'package:schools/presentation/ui/home/home_screen.dart';
import 'package:schools/presentation/ui/profile/profile_screen.dart';
import 'package:schools/presentation/ui/side_menu_widget/widgets/curve.dart';
import 'package:schools/presentation/ui/side_menu_widget/widgets/side_menu_content_widget.dart';

class SideMenuScreen extends StatelessWidget {
  final bool isComFromHome;

  const SideMenuScreen({Key? key, required this.isComFromHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RPSCustomPainter1(),
      child: Container(
        color: ColorsManager.yellow,
        child: ClipPath(
          clipper: RPSCustomPainter2(),
          child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              child: BlocConsumer<SideMenuBloc, SideMenuState>(
                listener: (context, state) {
                  if (state is SideMenuHomeState) {
                    _onSideMenuHomeState(context);
                  } else if (state is SideMenuUserProfileState) {
                    _onSideMenuProfileState(context);
                  } else if (state is SideMenuContactUsState) {
                    _onSideMenuContactUsState(context);
                  } else if (state is SideMenuAboutAppState) {
                    _onSideMenuAboutAppState(context);
                  }
                },
                builder: (context, state) {
                  return const SideMenuContentWidget();
                },
              )),
        ),
      ),
    );
  }

  void _onSideMenuHomeState(context) {
    if (isComFromHome == true) {
      Navigator.pop(context);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) =>  const HomeScreen()),
          (route) => false);
    }
  }

  void _onSideMenuProfileState(context) {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
  }

  void _onSideMenuContactUsState(context) {}

  void _onSideMenuAboutAppState(context) {}
}
