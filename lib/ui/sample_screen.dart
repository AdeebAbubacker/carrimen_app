import 'package:carryman_app/core/constant/colors.dart';
import 'package:carryman_app/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 90),
          const Text('data'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppConstants.bordercolor1, // Border color
                  width: 2, // Border width
                ),
              ),
              child: Textwidget(hintText: 'd'),
            ),
          ),
        ],
      ),
    );
  }
}

class Textwidget extends StatelessWidget {
  final String hintText;
  const Textwidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppConstants.bordercolor1, // Border color
          width: 1, // Border width
        ),
      ),
      child: TextFormField(
        style: TextStyles.axiforma16GreyReg,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyles.axiforma16GreyReg,

          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16.0),
          border: InputBorder.none, // Hide the default border
        ),
      ),
    );
  }
}
