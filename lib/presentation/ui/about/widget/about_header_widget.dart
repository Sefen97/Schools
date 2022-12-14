import 'package:flutter/material.dart';
import 'package:schools/core/utils/resorces/color_manager.dart';
import 'package:schools/presentation/shere_widgets/bold_text_widget.dart';

class AboutHeaderWidget extends StatelessWidget {
  const AboutHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsManager.primaryColor,
              ColorsManager.secondaryColor,
            ],
            stops: [0.5, 0.8],
          )),
      height:250,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            BoldTextWidget(
              text: 'I C S',
              fontSize: 50,
              color: ColorsManager.whiteColor,
            ),
            BoldTextWidget(
              text: 'Interactive school guidance',
              fontSize: 16,
              color: ColorsManager.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
