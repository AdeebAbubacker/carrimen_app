import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/ui/widgets/number_textfield.dart';
import 'package:carrimen_app/ui/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double devicePadding = outerPadding(context);
    double usableWidth = innerWidth(context);
    double inputheight = inputHeight(context);

    double elementPaddingVertical = elemPaddingVertical(context);

    double height669 = screenHeight * 0.0669; // 6.69% of the screen heightwidth
    double width203 = screenWidth * 0.0203; // 2.03% of the screen width
    double buttonwidth = screenWidth * 0.8524; // 85.24% of the screen width
    double buttonheight = screenHeight * 0.0657; // 6.57% of the screen width
    double perc727 = screenHeight * 0.0727; // 7.27% of the screen height
    double perc20 = screenHeight * 0.020; // 2.00% of the screen height
    double perc187 = screenHeight * 0.0187; // 1.87% of the screen height
    double perc281 = screenHeight * 0.0281; // 2.81% of the screen height
    // double elementPaddingVertical =
    //     screenHeight * 0.0240; // 2.81% of the screen height
    double perc375 = screenHeight * 0.0375; // 3.75% of the screen height

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: perc727),
            Image.asset('assets/carrimen_logo_1.png'),
            SizedBox(height: perc20),
            Text(
              'Create an Account',
              style: TextStyles.bold24black24,
            ),
            SizedBox(height: perc20),
            Text(
              'Sign up to join',
              style: TextStyles.semibold16grey77,
            ),
            SizedBox(height: perc281),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: devicePadding),
              child: Column(
                children: [
                  Textfield(
                    sizedBoxwidth: usableWidth,
                    inputHeight: inputheight,
                    hintText: 'Full Name',
                  ),
                  SizedBox(height: elementPaddingVertical),
                  Textfield(
                    sizedBoxwidth: usableWidth,
                    inputHeight: inputheight,
                    hintText: 'Email',
                  ),
                  SizedBox(height: elementPaddingVertical),
                  NumberTextField(
                    sizedBoxwidth: usableWidth,
                    inputHeight: inputheight,
                    hintText: 'Mobile Number',
                  ),
                  SizedBox(height: elementPaddingVertical),
                  Textfield(
                    sizedBoxwidth: usableWidth,
                    inputHeight: height669,
                    hintText: 'Create Password',
                  ),
                  SizedBox(height: elementPaddingVertical),
                  Textfield(
                    sizedBoxwidth: usableWidth,
                    inputHeight: inputheight,
                    hintText: 'Re-enter Password',
                  ),
                  SizedBox(height: perc375),
                  Row(
                    children: [
                      Image.asset('assets/tick_icon.png'),
                      SizedBox(width: width203),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'I agree to the  ',
                              style: TextStyles.regular16grey77,
                            ),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyles.medium16black3B,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: perc187),
            SizedBox(
              width: buttonwidth,
              height: buttonheight,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.purpleColor96,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Sign Up', style: TextStyles.semibold16whiteFF),
              ),
            ),
            SizedBox(height: perc187),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Have an account?  ',
                    style: TextStyles.regular16grey77,
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyles.medium16black3B,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
