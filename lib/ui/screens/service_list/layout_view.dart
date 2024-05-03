import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/screens/bottom/bottomNavigation.dart';
import 'package:carrimen_app/ui/screens/home/widgets/home_appBar.dart';
import 'package:carrimen_app/ui/screens/home/widgets/search_field.dart';
import 'package:carrimen_app/ui/screens/service_list/widgets/top_nav_offer.dart';
import 'package:carrimen_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  ServiceList({super.key});

  List images = [
    'assets/service_list_1.png',
    'assets/service_list_2.png',
    'assets/service_list_3.png',
    'assets/service_list_4.png',
    'assets/service_list_1.png',
    'assets/service_list_2.png',
    'assets/service_list_3.png',
    'assets/service_list_4.png',
    'assets/service_list_1.png',
    'assets/service_list_2.png',
    'assets/service_list_3.png',
    'assets/service_list_4.png',
  ];

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final screenwidth = screenWidth(context);
    final width153 = screenwidth * 153 / FigmaConstants.figmaDeviceWidth;
    final height289 = screenheight * 289 / FigmaConstants.figmaDeviceHeight;
    final crossAxisSpace24 = screenwidth * 24 / FigmaConstants.figmaDeviceWidth;
    final paddingTop8 = screenheight * 8 / FigmaConstants.figmaDeviceHeight;
    final paddingSide8 = screenwidth * 8 / FigmaConstants.figmaDeviceWidth;
    final imageWidth = screenwidth * 134 / FigmaConstants.figmaDeviceWidth;
    final imageHeight = screenheight * 134 / FigmaConstants.figmaDeviceHeight;
    final mainAxisSpace24 =
        screenheight * 24 / FigmaConstants.figmaDeviceHeight;
    return Scaffold(
      bottomNavigationBar: Bottom(),
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            VerticalSpacing(height: 24),
            SearchField(hintText: 'Search for Services'),
            VerticalSpacing(height: 25),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: PaddingConstant.outerPadding,
                    child: Column(
                      children: [
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: images.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: width153 / height289,
                            crossAxisCount: 2,
                            crossAxisSpacing: crossAxisSpace24,
                            mainAxisSpacing: mainAxisSpace24,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: Color.fromARGB(255, 223, 223, 223),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 225, 225, 225)
                                            .withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: paddingSide8,
                                  right: paddingSide8,
                                  top: paddingTop8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: imageWidth,
                                          height: imageHeight,
                                          child: Image.asset(
                                            images[index],
                                            width: imageWidth,
                                            height: imageHeight,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          top: 6,
                                          right: 6,
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: 32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                    color: Colors.white),
                                                child: Image.asset(
                                                    'assets/favourite.png')),
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalSpacing(height: 16),
                                    Text(
                                      'Room Cleaning',
                                      style: TextStyles.medium14black3B,
                                    ),
                                    VerticalSpacing(height: 6),
                                    Text(
                                      '₹1000',
                                      style: TextStyles.bold16pink96,
                                    ),
                                    VerticalSpacing(height: 6),
                                    Row(
                                      children: [
                                        Text(
                                          'Home Decor',
                                          style: TextStyles.medium10grey66,
                                        ),
                                        Spacer(),
                                        Text(
                                          'Kakanad',
                                          style: TextStyles.medium10grey66,
                                        ),
                                      ],
                                    ),
                                    VerticalSpacing(height: 10),
                                    AddToCartButton(
                                        text: 'Add to Cart', onPressed: () {})
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            VerticalSpacing(height: 24),
          ],
        ),
      ),
    );
  }
}
