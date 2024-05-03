import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);
    final screenheight = screenHeight(context);
    final profileSectionHeight =
        screenheight * 52 / FigmaConstants.figmaDeviceHeight;
    final profileSectionWidth =
        screenheight * 333 / FigmaConstants.figmaDeviceWidth;
    final sizedboxw8 = screenwidth * 8 / FigmaConstants.figmaDeviceWidth;
    final sizedboxh5 = screenheight * 5 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh4 = screenheight * 4 / FigmaConstants.figmaDeviceHeight;
    return SizedBox(
      height: profileSectionHeight,
      width: profileSectionWidth,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset('assets/allen_profile.png'),
        SizedBox(
          width: sizedboxw8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: sizedboxh5,
            ),
            Text(
              'Hello Allen!',
              style: TextStyles.bold16pink8E,
            ),
            SizedBox(
              height: sizedboxh4,
            ),
            Text(
              'Good Morning',
              style: TextStyles.bold11black24,
            ),
          ],
        ),
      ]),
    );
  }
}

