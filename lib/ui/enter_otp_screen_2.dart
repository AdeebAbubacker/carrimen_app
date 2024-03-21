import 'package:carryman_app/theme/axiforma_theme.dart';
import 'package:carryman_app/widget/cancel_button.dart';
import 'package:carryman_app/widget/signup_button.dart';
import 'package:flutter/material.dart';

class EnterOtpScreen2 extends StatelessWidget {
  final CustomTextStyle customTextStyle = CustomTextStyle();
  EnterOtpScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.1),
            Image.asset('assets/logo_1.png'),
            SizedBox(height: height * 0.03),
            Image.asset('assets/fi_8358886.png'),
            Center(
              child: Text(
                'Account Created Successfully',
                textAlign: TextAlign.center,
                style: customTextStyle.axiformaTextStyle(
                  fontSize: 24,
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                'Your account created successfully',
                textAlign: TextAlign.center,
                style: customTextStyle.axiformaTextStyle(
                  fontSize: 16,
                  color: const Color(0xFF777777),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            const ButtonOne(),
          ],
        ),
      ),
    );
  }
}



class OTPTextField extends StatelessWidget {
  const OTPTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 69,
      height: 60,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          // enabledBorder: UnderlineInputBorder(
          //   borderSide: BorderSide,
          // ),
          counter: Offstage(),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
