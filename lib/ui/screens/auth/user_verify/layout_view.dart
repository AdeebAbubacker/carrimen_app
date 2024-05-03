import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyYourAccount extends StatelessWidget {
  const VerifyYourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
   // double screenwidth = screenWidth(context);
    double sizedBoxHeight1 =
        screenheight * 190 / FigmaConstants.figmaDeviceHeight;
    double sizedBoxHeight2 =
        screenheight * 34 / FigmaConstants.figmaDeviceHeight;
    double sizedBoxHeight3 =
        screenheight * 24 / FigmaConstants.figmaDeviceHeight;
    double sizedBoxHeight4 =
        screenheight * 14 / FigmaConstants.figmaDeviceHeight;
  

    return Scaffold(
      body: Padding(
        padding: PaddingConstant.outerPadding,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizedBoxHeight1,
              ),
              Image.asset(
                'assets/carrimen_logo_1.png',
              ),
              SizedBox(
                height: sizedBoxHeight2,
              ),
              Center(
                  child: Text("Verify Your Account",
                      style: TextStyles.bold24black24)),
              SizedBox(
                height: sizedBoxHeight3,
              ),
              Center(
                  child: Text("(219)555-O114",
                      style: TextStyles.semibold20grey77)),
              SizedBox(
                height: sizedBoxHeight3,
              ),
              Center(
                  child: Text(
                      "We will send the authentication code to your mobile number you entered. Do you want to continue?",
                      textAlign: TextAlign.center,
                      style: TextStyles.semibold16grey77)),
              SizedBox(
                height: sizedBoxHeight2,
              ),
              ColoredButton(
          
                  onPressed: () {context.go('/user_otp');},
                  text: 'Sign Up'),
              SizedBox(
                height: sizedBoxHeight4,
              ),
              ColorlessButton(
         
                onPressed: () {
                  // Add your onPressed function here
                   
                },
                text: 'Cancel',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//----------------