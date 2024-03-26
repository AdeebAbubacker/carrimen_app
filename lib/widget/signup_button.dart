import 'package:carryman_app/core/constant/colors.dart';
import 'package:carryman_app/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOne extends StatelessWidget {
  final String content;
  const ButtonOne({super.key, this.content = 'Sign Up'});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 335,
        height: 56,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppConstants.primaryColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              content,
              style: TextStyles.axiforma16WhitesemiBold,
            )));
  }
}
