import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/screens/bottom/bottomNavigation.dart';
import 'package:carrimen_app/ui/screens/home/widgets/home_appBar.dart';
import 'package:carrimen_app/ui/screens/home/widgets/profile.dart';
import 'package:flutter/material.dart';

class accountPage extends StatelessWidget {
  const accountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final sizedboxh20 = screenheight * 20 / FigmaConstants.figmaDeviceHeight;
    return Scaffold(
      bottomNavigationBar: Bottom(),
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: sizedboxh20),
            Padding(
              padding: PaddingConstant.outerPadding,
              child: ProfileSection(),
            ),
            SizedBox(height: sizedboxh20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      thickness: 1,
                      color: ColorConstants.dividerColor,
                    ),
                    Padding(
                      padding: PaddingConstant.innerPadding,
                      child: Row(
                        children: [
                          Image.asset('assets/address.png'),
                          SizedBox(
                            width: WidthConstants.sizedboxWidth,
                          ),
                          Text(
                            "Address",
                            style: TextStyles.regular14grey66,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: ColorConstants.dividerColor,
                    ),
                    Padding(
                      padding: PaddingConstant.innerPadding,
                      child: Row(
                        children: [
                          Image.asset('assets/payment.png'),
                          SizedBox(
                            width: WidthConstants.sizedboxWidth,
                          ),
                          Text(
                            "Payment method",
                            style: TextStyles.regular14grey66,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: ColorConstants.dividerColor,
                    ),
                    Padding(
                      padding: PaddingConstant.innerPadding,
                      child: Row(
                        children: [
                          Image.asset('assets/aboutUs.png'),
                          SizedBox(
                            width: WidthConstants.sizedboxWidth,
                          ),
                          Text(
                            "about Us",
                            style: TextStyles.regular14grey66,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: ColorConstants.dividerColor,
                    ),
                    Padding(
                      padding: PaddingConstant.innerPadding,
                      child: Row(
                        children: [
                          Image.asset('assets/settings.png'),
                          SizedBox(
                            width: WidthConstants.sizedboxWidth,
                          ),
                          Text(
                            "Settings",
                            style: TextStyles.regular14grey66,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: ColorConstants.dividerColor,
                    ),
                    Padding(
                      padding: PaddingConstant.innerPadding,
                      child: Row(
                        children: [
                          Image.asset('assets/support.png'),
                          SizedBox(
                            width: WidthConstants.sizedboxWidth,
                          ),
                          Text(
                            "support",
                            style: TextStyles.regular14grey66,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: ColorConstants.dividerColor,
                    ),
                    Padding(
                      padding: PaddingConstant.innerPadding,
                      child: Row(
                        children: [
                          Image.asset('assets/faqs.png'),
                          SizedBox(
                            width: WidthConstants.sizedboxWidth,
                          ),
                          Text(
                            "FAQs",
                            style: TextStyles.regular14grey66,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ColorConstants.secondaryTextColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
