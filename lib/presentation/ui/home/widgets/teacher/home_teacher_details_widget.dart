import 'package:flutter/material.dart';
import 'package:schools/core/utils/resorces/image_path.dart';
import 'package:schools/presentation/shere_widgets/card_widget.dart';
import 'package:schools/presentation/ui/school_houses/school_houses_screen.dart';

class HomeTeacherDetailsWidget extends StatefulWidget {
  const HomeTeacherDetailsWidget({Key? key}) : super(key: key);

  @override
  State<HomeTeacherDetailsWidget> createState() =>
      _HomeTeacherDetailsWidgetState();
}

class _HomeTeacherDetailsWidgetState extends State<HomeTeacherDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5,mainAxisExtent: 150),
        itemCount: 20,
        padding: const EdgeInsets.all(5),
        shrinkWrap: false,
        semanticChildCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const SchoolHousesScreen()));
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
