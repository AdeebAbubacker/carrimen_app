import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/screens/home/widgets/bottom_sheet_one.dart';
import 'package:carrimen_app/ui/screens/home/widgets/home_appBar.dart';
import 'package:carrimen_app/ui/screens/home/widgets/personal_service_button.dart';
import 'package:carrimen_app/ui/screens/home/widgets/profile.dart';
import 'package:carrimen_app/ui/screens/home/widgets/search_field.dart';
import 'package:carrimen_app/ui/screens/home/widgets/show_more_button.dart';
import 'package:carrimen_app/ui/screens/home/widgets/top_nav_offer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final sizedboxh23 = screenheight * 23 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh24 = screenheight * 24 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh16 = screenheight * 16 / FigmaConstants.figmaDeviceHeight;

    final List<PersonalServiceContent> personalservice = [
      PersonalServiceContent(
          text: 'Carri Cleaning',
          img: 'assets/home/carri_categories/carri_cleaning.svg'),
      PersonalServiceContent(
          text: 'Carri Care',
          img: 'assets/home/carri_categories/carri_care.svg'),
      PersonalServiceContent(
          text: 'Carri Professional',
          img: 'assets/home/carri_categories/carri_professional.svg'),
      PersonalServiceContent(
          text: 'Carri Digital Service',
          img: 'assets/home/carri_categories/carri_digital_service.svg'),
      PersonalServiceContent(
          text: 'Carri Wallah',
          img: 'assets/home/carri_categories/carri_wallah.svg'),
      PersonalServiceContent(
          text: 'Carri Kitchen',
          img: 'assets/home/carri_categories/carri_kitchen.svg'),
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                HomeAppBar(),
                TopNavOfferSection(),
                SizedBox(height: sizedboxh23),
                Padding(
                  padding: PaddingConstant.outerPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileSection(),
                      SizedBox(height: sizedboxh23),
                      // SizedBox(height: sizedboxh24),
                      // VerticalSpacing(
                      //   height: 24,
                      // ),
                      SearchField(hintText: 'Search for services'),
                      SizedBox(height: sizedboxh24),
                      Text(
                        'Personal Services',
                        style: TextStyles.bold17black24,
                      ),
                      SizedBox(height: sizedboxh16),
                      PersonalServiceGrid(personalservice: personalservice),
                      SizedBox(height: sizedboxh16),
                      ShowMoreButton(),
                    ],
                  ),
                ),
              ],
            ),
            // BottomSheetOne(
            //   initialchildSize: 0.259,
            //   minchildsize: 0.259,
            // ),

            BottomSheetOne(
              initialchildSize: 0.15,
              minchildsize: 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
