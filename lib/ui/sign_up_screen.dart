import 'package:carryman_app/theme/axiforma_theme.dart';
import 'package:carryman_app/ui/sample_screen.dart';
import 'package:carryman_app/widget/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  final CustomTextStyle customTextStyle = CustomTextStyle();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.1),
              Image.asset('assets/logo_1.png'),
              const SizedBox(height: 20),
              Text(
                'Create an Account',
                style: customTextStyle.axiformaTextStyle(
                  fontSize: 24,
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.009),
              // const SizedBox(height: 10.0),
              Text(
                'Sign up to join',
                style: customTextStyle.axiformaTextStyle(
                  fontSize: 16,
                  color: const Color(0xFF777777),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Textwidget(hintText: 'Full Name'),
                    SizedBox(height: height * 0.01999),
                    // const SizedBox(height: 19.0),
                    const Textwidget(hintText: 'Email'),
                    SizedBox(height: height * 0.01999),
                    const Textwidget(hintText: 'Mobile Number'),
                    SizedBox(height: height * 0.01999),
                    const Textwidget(hintText: 'Create Password'),
                    SizedBox(height: height * 0.01999),
                    const Textwidget(hintText: 'Re-enter Password'),
                    const SizedBox(height: 40.0),
                    Wrap(
                      children: [
                        Image.asset('assets/Vector.png'),
                        const SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I agree to the ',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                              TextSpan(
                                text: 'Terms of Service',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 81, 125, 132),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              ButtonOne(),
              const SizedBox(height: 18),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Have an account? ',
                      style: GoogleFonts.montserrat(
                          fontSize: 14.0, color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 33, 70, 75),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
