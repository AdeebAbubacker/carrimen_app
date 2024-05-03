import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);
    final screenheight = screenHeight(context);
    final buttonHeight = screenheight * 32 / FigmaConstants.figmaDeviceHeight;
    final buttonWidth = screenwidth * 334 / FigmaConstants.figmaDeviceWidth;
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: ColorConstants.greyF5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Show More',
            style: TextStyles.medium12grey77,
          ),
          SizedBox(width: 10),
          Image.asset('assets/dropdown_icon.png')
        ],
      ),
    );
  }
}
