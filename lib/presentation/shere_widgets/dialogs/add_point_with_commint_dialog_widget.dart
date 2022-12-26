import 'package:flutter/material.dart';
import 'package:schools/core/utils/resorces/color_manager.dart';
import 'package:schools/generated/l10n.dart';
import 'package:schools/presentation/shere_widgets/bold_text_widget.dart';
import 'package:schools/presentation/shere_widgets/custom_button_widget.dart';
import 'package:schools/presentation/shere_widgets/medium_text_widget.dart';

class AddPointDialogWidget extends StatefulWidget {
  final Function() addAction;
  final String childName;
  final TextEditingController commentController;

  const AddPointDialogWidget(
      {Key? key,
      required this.addAction,
      required this.childName,
      required this.commentController})
      : super(key: key);

  @override
  State<AddPointDialogWidget> createState() => _AddPointDialogWidgetState();
}

class _AddPointDialogWidgetState extends State<AddPointDialogWidget> {
  String dropdownValue = 'Item 1';
  bool isAddCommit = false;

  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'other',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 280,
        decoration: const BoxDecoration(
            color: ColorsManager.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Icon(Icons.star, size: 40, color: ColorsManager.yellow),
            BoldTextWidget(
                text: S.of(context).addPoint,
                fontSize: 14,
                color: ColorsManager.darkGrayColor),
            const SizedBox(
              height: 7,
            ),
            MediumTextWidget(
                textAlign: TextAlign.center,
                text: S.of(context).chooseWhyLeenDeserveThisPoint,
                fontSize: 12,
                color: ColorsManager.blackColor),
            const SizedBox(
              height: 7,
            ),
            MediumTextWidget(
                textAlign: TextAlign.center,
                text: widget.childName,
                fontSize: 12,
                color: ColorsManager.blackColor),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton(
                      value: dropdownValue,
                      isExpanded: true,
                      icon: const Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 27,
                        color: ColorsManager.secondaryColor,
                      ),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                          if (newValue == "other") {
                            isAddCommit = true;
                          } else {
                            isAddCommit = false;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
                visible: isAddCommit,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          isDense: true,
                          focusColor: ColorsManager.primaryColor,
                          hintText: S.of(context).typeWhyLeenDeserveThisPoint,
                          hintStyle: const TextStyle(fontSize: 13)),
                      controller: widget.commentController,
                    ))),
             SizedBox(
              height: isAddCommit? 20:50,
            ),
            CustomButtonWidget(
                buttonWidth: MediaQuery.of(context).size.width / 4,
                onPressed: widget.addAction,
                buttonText: S.of(context).reward,
                borderRadius: 25,
                buttonColor: ColorsManager.buttonColor,
                borderColor: ColorsManager.buttonColor,
                buttonTextColor: ColorsManager.whiteColor),
          ],
        ));
  }
}
