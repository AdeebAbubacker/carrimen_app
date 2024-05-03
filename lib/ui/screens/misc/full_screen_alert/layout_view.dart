import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterOtpVerified extends StatelessWidget {
  const EnterOtpVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    //double screenwidth = screenWidth(context);
    final sizedboxh1 = screenheight * 134 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh2 = screenheight * 48.52 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh3 = screenheight * 29 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh4 = screenheight * 16 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh5 = screenheight * 50 / FigmaConstants.figmaDeviceHeight;
 

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
                Image.asset('assets/verified_success.png'),
                SizedBox(height: sizedboxh3),
                Center(
                  child: Text(
                    'Account Created Successfully',
                    textAlign: TextAlign.center,
                    style: TextStyles.bold24black24,
                  ),
                ),
                SizedBox(height: sizedboxh4),
                Center(
                  child: Text(
                    'Your account created successfully, Listen your favourite music.',
                    textAlign: TextAlign.center,
                    style: TextStyles.semibold16grey77,
                  ),
                ),
                SizedBox(height: sizedboxh5),
                ColorlessButton(
            
                    text: 'Choose Location',
                    onPressed: () {context.go('/enter_otp_location');})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
