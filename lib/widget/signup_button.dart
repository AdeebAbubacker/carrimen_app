
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOne extends StatelessWidget {
  final String content;
  const ButtonOne({
    super.key,
    this.content = 'Sign Up'
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 290,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFFC83E96),
              ),
              shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: GoogleFonts.montserrat(
                fontSize: 14.0,
                color: Color.fromARGB(255, 247, 247, 247),
                fontWeight: FontWeight.w700,
              ),
            )));
  }
}
