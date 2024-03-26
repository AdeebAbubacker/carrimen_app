import 'package:carryman_app/core/constant/text_styles.dart';
import 'package:carryman_app/widget/signup_button.dart';
import 'package:flutter/material.dart';

class EnterOtpScreen2 extends StatelessWidget {
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
            SizedBox(height: height * 0.039),
            Image.asset('assets/fi_8358886.png'),
            Center(
              child: Text('Account Created Successfully',
                  textAlign: TextAlign.center,
                  style: TextStyles.axiforma24CharcoalGreyBold),
            ),
            Center(
              child: Text(
                'Your account created successfully',
                textAlign: TextAlign.center,
                style: TextStyles.axiforma16GreyW500,
              ),
            ),
            SizedBox(height: height * 0.1),
            const ButtonOne(content: 'Choose Location'),
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
