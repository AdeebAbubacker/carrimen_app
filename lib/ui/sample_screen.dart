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
                  color:
                      const Color.fromARGB(255, 199, 201, 199), // Border color
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
          color: const Color.fromARGB(255, 199, 201, 199), // Border color
          width: 1, // Border width
        ),
      ),
      child: TextFormField(
        style: GoogleFonts.montserrat(
          fontSize: 13.0,
          color: const Color.fromARGB(255, 28, 28, 28),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(fontSize: 11.0, color: Colors.grey),

          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16.0),
          border: InputBorder.none, // Hide the default border
        ),
      ),
    );
  }
}
