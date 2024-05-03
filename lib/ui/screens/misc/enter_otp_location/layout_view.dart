import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class EnterOtpLocation extends StatelessWidget {
  const EnterOtpLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
  //  double screenwidth = screenWidth(context);
    final sizedboxh1 = screenheight * 90 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh2 = screenheight * 78.52 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh3 = screenheight * 78 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh4 = screenheight * 118 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh5 = screenheight * 30 / FigmaConstants.figmaDeviceHeight;


    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: PaddingConstant.outerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: sizedboxh1),
                Image.asset('assets/carrimen_logo_1.png'),
                SizedBox(height: sizedboxh2),
                Image.asset('assets/location_icon.png'),
                SizedBox(height: sizedboxh3),
                Center(
                  child: Text(
                    'Where do you want your service?',
                    textAlign: TextAlign.center,
                    style: TextStyles.bold24black24,
                  ),
                ),
                SizedBox(height: sizedboxh4),
                ColoredButton(
            
                    text: 'At my current location',
                    onPressed: () {}),
                SizedBox(height: sizedboxh5),
                Text(
                  'I’ll enter my location manually',
                  style: TextStyles.semibold16purple96,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
