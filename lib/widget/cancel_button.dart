import 'package:carryman_app/core/constant/colors.dart';
import 'package:carryman_app/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 56,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Colors.transparent), // Transparent background
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
              side: const BorderSide(
                width: 2.0, // Border width
                color: AppConstants.primaryColor,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Cancel',
          style: TextStyles.axiforma16PinksemiBold,
        ),
      ),
    );
  }
}
