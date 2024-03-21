import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      height: 50,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Colors.transparent), // Transparent background
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
              side: const BorderSide(
                width: 2.0, // Border width
                color: const Color(0xFFC83E96),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Cancel',
          style: TextStyle(
            color: const Color(0xFFC83E96),
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
