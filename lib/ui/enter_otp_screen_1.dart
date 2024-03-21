import 'package:coinswitch_crypto/theme/axiforma_theme.dart';
import 'package:coinswitch_crypto/widget/cancel_button.dart';
import 'package:coinswitch_crypto/widget/signup_button.dart';
import 'package:flutter/material.dart';

class EnterOtpScreen1 extends StatelessWidget {
  final CustomTextStyle customTextStyle = CustomTextStyle();
  EnterOtpScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.1),
          Image.asset('assets/logo_1.png'),
          SizedBox(height: height * 0.03),
          Text(
            'Enter OTP',
            style: customTextStyle.axiformaTextStyle(
              fontSize: 20,
              color: const Color(0xFF242424),
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Text(
              'A verification codes has been sent to (219)555-0114',
              textAlign: TextAlign.center,
              style: customTextStyle.axiformaTextStyle(
                fontSize: 16,
                color: const Color(0xFF777777),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 60),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OTPTextField(),
              OTPTextField(),
              OTPTextField(),
              OTPTextField(),
            ],
          ),
          const SizedBox(height: 40), // Adjust as needed
          const ButtonOne(),
          SizedBox(height: height * 0.02),
          const CancelButton()
        ],
      ),
    );
  }
}

// class EnterOtpScreen1 extends StatelessWidget {
//   final CustomTextStyle customTextStyle = CustomTextStyle();
//   EnterOtpScreen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: height * 0.1),
//               Image.asset('assets/logo_1.png'),
//               SizedBox(height: height * 0.03),
//               Text(
//                 'Enter OTP',
//                 style: customTextStyle.axiformaTextStyle(
//                   fontSize: 20,
//                   color: const Color(0xFF242424),
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   'A verification codes has been sent to (219)555-0114',
//                   textAlign: TextAlign.center,
//                   style: customTextStyle.axiformaTextStyle(
//                     fontSize: 16,
//                     color: const Color(0xFF777777),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 60),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   OTPTextField(),
//                   OTPTextField(),
//                   OTPTextField(),
//                   OTPTextField(),
//                 ],
//               ),
//               const SizedBox(height: 90),
//               const SignupButton(),
//               SizedBox(height: height * 0.02),
//               const CancelButton()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
