import 'package:carryman_app/core/constant/text_styles.dart';
import 'package:carryman_app/widget/signup_button.dart';
import 'package:flutter/material.dart';

class EnterOtpScreen3 extends StatelessWidget {
  EnterOtpScreen3({Key? key}) : super(key: key);

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
            SizedBox(height: height * 0.1),
            Image.asset('assets/location_marker.png'),
            SizedBox(height: height * 0.1),
            Center(
              child: Text(
                'Where do you want your service?',
                textAlign: TextAlign.center,
                style: TextStyles.axiforma24CharcoalGreyBold,
              ),
            ),
            SizedBox(height: height * 0.1),
            const ButtonOne(content: 'At my current location'),
            SizedBox(height: height * 0.01),
            TextButton(
                onPressed: () {},
                child: Text(
                  'I’ll enter my location manually',
                  style: TextStyles.axiforma16Pinkw400,
                ))
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
