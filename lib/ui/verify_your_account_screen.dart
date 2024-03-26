import 'package:carryman_app/core/constant/text_styles.dart';
import 'package:carryman_app/widget/cancel_button.dart';
import 'package:flutter/material.dart';
import 'package:carryman_app/widget/signup_button.dart';

class VerifyYourAccountScreen extends StatelessWidget {
  VerifyYourAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.3),
              Image.asset('assets/logo_1.png'),
              const SizedBox(height: 20),
              Text(
                'Verify Your Account',
                style: TextStyles.axiforma24CharcoalGreyBold,
              ),
              SizedBox(height: height * 0.009),
              Text('(219)555-0114', style: TextStyles.axiforma20GreyBold),
              SizedBox(height: height * 0.009),
              Center(
                child: Text(
                    'We will send the authentication code to your mobile number you entered. Do you want to continue?',
                    textAlign: TextAlign.center,
                    style: TextStyles.axiforma16GreyW500),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
              ),
              const SizedBox(height: 20.0),
              const ButtonOne(),
              SizedBox(height: height * 0.009),
              CancelButton(),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
