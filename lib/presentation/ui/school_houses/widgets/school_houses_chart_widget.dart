import 'package:flutter/material.dart';
import 'package:schools/core/utils/resorces/color_manager.dart';
import 'package:schools/presentation/ui/school_houses/widgets/chart_content_widget.dart';

class SchoolHousesChartWidget extends StatelessWidget {
  const SchoolHousesChartWidget({Key? key}) : super(key: key);

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
        height: 500,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  color: ColorsManager.whiteColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(200.0,15.0),
                      bottomLeft: Radius.elliptical(200.0,15.0))),
            ),
            const  ChartContentWidget(),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorsManager.blackColor, width: 1),
                          color: ColorsManager.whiteColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: const Icon(Icons.currency_bitcoin,
                          color: ColorsManager.yellow, size: 80),
                    )),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(right: 30,left: 60,bottom: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                  _iconData(Icons.confirmation_num_sharp),
                  _iconData(Icons.confirmation_num_sharp),
                  _iconData(Icons.confirmation_num_sharp),
                  _iconData(Icons.confirmation_num_sharp),
                ],),
              ),
            )
          ],
        ));
  }


  Widget _iconData(IconData icon)=> Icon(icon,color: Colors.yellow,size: 30,);
}
