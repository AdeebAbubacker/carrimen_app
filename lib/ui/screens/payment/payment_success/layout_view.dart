import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: PaddingConstant.outerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacing(height: 134),
                Image.asset('assets/carrimen_logo_1.png'),
                VerticalSpacing(height: 48.52),
                Image.asset('assets/verified_success.png'),
                VerticalSpacing(height: 29),
                Center(
                  child: Text(
                    'Payment Successfully',
                    textAlign: TextAlign.center,
                    style: TextStyles.bold24black24,
                  ),
                ),
                VerticalSpacing(height: 16),
                Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Mauris purus posuere nunc vitae mattis massa proin.',
                    textAlign: TextAlign.center,
                    style: TextStyles.semibold16grey77,
                  ),
                ),
                VerticalSpacing(height: 64),
                ColoredButton(text: 'Done', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
