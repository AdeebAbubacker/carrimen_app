import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/ui/screens/auth/user_signup/layout_view.dart';
import 'package:carrimen_app/ui/screens/bottom/bottomNavigation.dart';
import 'package:carrimen_app/ui/screens/home/widgets/home_appBar.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class CheckoutPayment extends StatelessWidget {
  const CheckoutPayment({super.key});

  @override
  Widget build(BuildContext context) {
    double usableWidth = innerWidth(context);
    double inputheight = inputHeight(context);
    final screenheight = screenHeight(context);
    final sizedboxh12 = screenheight * 12 / FigmaConstants.figmaDeviceHeight;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: sizedboxh12),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Row(
                      children: [Text("Shipping Address")],
                    ),
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizedboxh12,
                        ),
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'Checkout',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizedboxh12,
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'Add Address',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: PaddingConstant.LRTBPadding,
                        child: Text("Payment Method"),
                      ),
                      SizedBox(
                        height: sizedboxh12,
                      )
                    ],
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'Credit/Debit Card',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'UPI Payment',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'Net Banking',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'Pay on Service',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        SizedBox(
                            width: usableWidth,
                            height: inputheight,
                            child: ColoredButton(
                                text: "continue", onPressed: () {}))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: PaddingConstant.LRTBPadding,
                        child: Text("Disclaimer"),
                      ),
                      SizedBox(
                        height: sizedboxh12,
                      )
                    ],
                  ),
                  Padding(
                    padding: PaddingConstant.LRTBPadding,
                    child: Column(
                      children: [
                        Textfield(
                          sizedBoxwidth: usableWidth,
                          inputHeight: inputheight,
                          hintText: 'description about service',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sizedboxh12),
                ],
              ),
            )),
            Bottom(),
          ],
        ),
      ),
    );
  }
}
