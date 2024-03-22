import 'package:carryman_app/theme/axiforma_theme.dart';
import 'package:carryman_app/widget/cancel_button.dart';
import 'package:carryman_app/widget/signup_button.dart';
import 'package:flutter/material.dart';

class EnterOtpScreen3 extends StatelessWidget {
  final CustomTextStyle customTextStyle = CustomTextStyle();
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
                style: customTextStyle.axiformaTextStyle(
                  fontSize: 24,
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            const ButtonOne(content: 'At my current location'),
            SizedBox(height: height * 0.01),
            TextButton(
                onPressed: () {},
                child: Text(
                  'I’ll enter my location manually',
                  style: customTextStyle.axiformaTextStyle(
                    fontSize: 16,
                    color: const Color(0xFFC83E96),
                    fontWeight: FontWeight.w400,
                  ),
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
