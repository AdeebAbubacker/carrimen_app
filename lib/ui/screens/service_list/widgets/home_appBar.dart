import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);
    final screenheight = screenHeight(context);
    final sizedboxw40 = screenwidth * 40 / FigmaConstants.figmaDeviceWidth;
    final paddingw30 = screenwidth * 30 / FigmaConstants.figmaDeviceWidth;
    final paddingh33 = screenheight * 33 / FigmaConstants.figmaDeviceHeight;
    final paddingh15 = screenheight * 15 / FigmaConstants.figmaDeviceHeight;
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
            left: paddingw30,
            right: paddingw30,
            top: paddingh33,
            bottom: paddingh15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/map.png'),
            SizedBox(
              width: 4,
            ),
            Text(
              "Erna...",
              style: TextStyles.medium14grey77,
            ),
            Image.asset('assets/dropdown_icon.png'),
            SizedBox(
              width: sizedboxw40,
            ),
            Image.asset(
              'assets/home_appbar_text.png',
            ),
            Spacer(),
            Image.asset('assets/home_alert.png'),
          ],
        ),
      ),
    );
  }
}
