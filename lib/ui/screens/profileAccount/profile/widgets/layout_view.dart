import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/screens/bottom/bottomNavigation.dart';
import 'package:carrimen_app/ui/screens/home/widgets/home_appBar.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:carrimen_app/ui/widgets/textfield.dart';
import 'package:flutter/material.dart';

class accountProfile extends StatelessWidget {
  const accountProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final sizedboxh12 = screenheight * 12 / FigmaConstants.figmaDeviceHeight;
     final sizedboxh160 = screenheight * 160 / FigmaConstants.figmaDeviceHeight;
    final screenwidth = screenWidth(context);
    final paddingw30 = screenwidth * 30 / FigmaConstants.figmaDeviceWidth;
    final sizedboxw16 = screenwidth * 16 / FigmaConstants.figmaDeviceWidth;
    double usableWidth = innerWidth(context);
    double inputheight = inputHeight(context);
    double elementPaddingVertical = elemPaddingVertical(context);
    return Scaffold(
      bottomNavigationBar: Bottom(),
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: sizedboxh12),
            Padding(
              padding: EdgeInsets.only(
                left: paddingw30,
                right: paddingw30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/less.png'),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Profile",
                    style: TextStyles.medium14grey77,
                  ),
                  Spacer(),
                  Image.asset('assets/edit.png'),
                ],
              ),
            ),
            Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('assets/allen_profile.png'),
              ]),
            ),
            SizedBox(
              height: sizedboxh12,
            ),
            Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Allen",
                  style: TextStyles.bold16purple24,
                ),
              ]),
            ),
            SizedBox(
              height: sizedboxw16,
            ),
            Padding(
              padding:PaddingConstant.outerPadding,
              child: Textfield(
                sizedBoxwidth: usableWidth,
                inputHeight: inputheight,
                hintText: 'Name',
              ),
            ),
            SizedBox(height: elementPaddingVertical),
            Padding(
              padding: PaddingConstant.outerPadding,
              child: Textfield(
                sizedBoxwidth: usableWidth,
                inputHeight: inputheight,
                hintText: 'Address',
              ),
            ),
            SizedBox(height: elementPaddingVertical),
            Padding(
              padding:PaddingConstant.outerPadding,
              child: Textfield(
                sizedBoxwidth: usableWidth,
                inputHeight: inputheight,
                hintText: 'E-mail',
              ),
            ),
            SizedBox(height: elementPaddingVertical),
            Padding(
              padding:PaddingConstant.outerPadding,
              child: NumberTextField(
                sizedBoxwidth: usableWidth,
                inputHeight: inputheight,
                hintText: 'Mobile Number',
              ),
            ),
            SizedBox(height: sizedboxh160),
            Padding(
              padding: PaddingConstant.outerPadding,
              child: SizedBox(
                  width: usableWidth,
                  height: inputheight,
                  child: Row(children: [
                   Expanded(child: GreyColorButton(text: 'text',textcolor: ColorConstants.secondaryTextColor, iconPath: ('assets/logout.png'),iconcolor: ColorConstants.secondaryTextColor, onPressed: (){}))
                   
                  ],)),
            )
          ],
        ),
      ),
    );
  }
}

class NumberTextField extends StatelessWidget {
  const NumberTextField({
    Key? key,
    required this.sizedBoxwidth,
    required this.inputHeight,
    required this.hintText,
  }) : super(key: key);

  final double sizedBoxwidth;
  final double inputHeight;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.greyF7,
      width: sizedBoxwidth,
      height: inputHeight,
      child: TextField(
        keyboardType: TextInputType.number, // Set keyboard type to number
        style: TextStyles.regular16black24,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyles.regular16grey77,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 4,
              color: ColorConstants.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(9)),
          ),
        ),
      ),
    );
  }
}
