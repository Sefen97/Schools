import 'package:flutter/material.dart';
import 'package:schools/core/utils/resorces/image_path.dart';
import 'package:schools/presentation/shere_widgets/card_widget.dart';
import 'package:schools/presentation/ui/add_point/add_point_screen.dart';

class HomeListWidget extends StatelessWidget {
  const HomeListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5),
        itemCount: 20,
        padding: const EdgeInsets.all(5),
        shrinkWrap: false,
        semanticChildCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AddPointScreen()));
                // if (index == 0) {
                //   showAddPointWithCommintFunction(context: context,
                //       addAction: () {
                //         Navigator.pop(context);
                //       },
                //       addController: addController,
                //       commintController: addController);
                // }else if(index==1){
                //   showAddPointFunction(
                //       context: context,
                //       addAction: () {
                //         Navigator.pop(context);
                //       },
                //       addController: addController);
                // }
              },
              child: const CardWidget(
                section: "Section A",
                imagePath: ImagesPath.schoolItem,
                grade: "Grade 2",
              ),
            ),
          );
        },
      ),
    );
  }
}
