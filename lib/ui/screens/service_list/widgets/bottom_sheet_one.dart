import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class BottomSheetOne extends StatelessWidget {
  final initialchildSize;
  final minchildsize;
  BottomSheetOne({
    super.key,
    this.initialchildSize,
    this.minchildsize,
  });

  final List<FeaturedModel> featuredlist = [
    FeaturedModel(
        image: 'assets/Carri Wallah.png',
        servicecategory: 'Carri Wallah ',
        servicename: 'Food Delivery',
        price: '₹250'),
    FeaturedModel(
        image: 'assets/Carri Cleaning_1.png',
        servicecategory: 'Carri Cleaning',
        servicename: 'Office Cleaning',
        price: '₹1000'),
    FeaturedModel(
        image: 'assets/Carri_Cleaning_2.png',
        servicecategory: 'Carri Cleaning',
        servicename: 'Car Cleaning',
        price: '₹500'),
    FeaturedModel(
        image: 'assets/Carri_Cleaning_3.png',
        servicecategory: 'Carri Cleaning',
        servicename: 'Kitchen Cleaning',
        price: '₹1500'),
  ];

  final List<RecommendedModel> recommendedlist = [
    RecommendedModel(
      image: 'assets/recommendation_1.png',
      rating: 'Carri Wallah ',
      servicename: 'Cleaning Kitchen',
    ),
    RecommendedModel(
      image: 'assets/recommendation_2.png',
      rating: 'Carri Wallah ',
      servicename: 'Service Your Computer',
    ),
    RecommendedModel(
      image: 'assets/recommendation_3.png',
      rating: 'Carri Wallah ',
      servicename: 'Door Delivery',
    ),
    RecommendedModel(
      image: 'assets/recommendation_4.png',
      rating: 'Carri Wallah ',
      servicename: 'Bathroom Plumbing',
    ),
    RecommendedModel(
      image: 'assets/recommendation_5.png',
      rating: 'Carri Wallah ',
      servicename: 'Senior Care',
    ),
  ];

  final List<MostBookedModel> mostbookedlist = [
    MostBookedModel(
      image: 'assets/most_booked_1.png',
      rating: '4.0',
      servicename: 'Home Cleaning',
      price: '₹ 1000',
    ),
    MostBookedModel(
      image: 'assets/most_booked_2.png',
      rating: '4.0',
      servicename: 'Engine Diagnostics',
      price: '₹ 1000',
    ),
    MostBookedModel(
      image: 'assets/most_booked_3.png',
      rating: '4.0',
      servicename: 'Computer Repair',
      price: '₹ 1000',
    ),
    MostBookedModel(
      image: 'assets/most_booked_4.png',
      rating: '4.0',
      servicename: 'Child Care',
      price: '₹ 1000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final screenwidth = screenWidth(context);
    final sizedboxh24 = screenheight * 24 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh36 = screenheight * 36 / FigmaConstants.figmaDeviceHeight;

    return DraggableScrollableSheet(
      initialChildSize: initialchildSize,
      maxChildSize: 0.9,
      minChildSize: minchildsize,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: ListView.builder(
            controller: scrollController,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: sizedboxh24,
                  ),
                  Container(
                    height: 5,
                    width: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      color: Color(0xFFB8B8B8),
                    ),
                  ),
                  SizedBox(
                    height: sizedboxh24,
                  ),
                  ServiceHeader(serviceName: 'Offers'),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 189, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        EdgeInsets padding;
                        if (index == 0) {
                          padding = EdgeInsets.only(left: 30, right: 16);
                        } else {
                          padding = EdgeInsets.only(right: 16);
                        }
                        return Padding(
                          padding: padding,
                          child:
                              OfferSectionBox(), // Assuming OfferSectionBox is your widget
                        );
                      },
                    ),
                  ),
                  SizedBox(height: sizedboxh36),
                  HorizontalLine(),
                  SizedBox(height: sizedboxh24),
                  ServiceHeader(serviceName: 'Featured Services'),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 249, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: featuredlist.length,
                      itemBuilder: (context, index) {
                        EdgeInsets padding;
                        if (index == 0) {
                          padding = EdgeInsets.only(left: 30, right: 16);
                        } else {
                          padding = EdgeInsets.only(right: 16);
                        }
                        return Padding(
                          padding: padding,
                          child: FeaturedServiceBox(
                            image: featuredlist[index].image,
                            price: featuredlist[index].price,
                            servicecategory:
                                featuredlist[index].servicecategory,
                            servicename: featuredlist[index].servicename,
                          ), // Assuming OfferSectionBox is your widget
                        );
                      },
                    ),
                  ),
                  SizedBox(height: sizedboxh36),
                  HorizontalLine(),
                  SizedBox(height: sizedboxh24),
                  ServiceHeader2(
                    serviceName: 'See Our Recommendations',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 240, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recommendedlist.length,
                      itemBuilder: (context, index) {
                        EdgeInsets padding;
                        if (index == 0) {
                          padding = EdgeInsets.only(left: 30, right: 16);
                        } else {
                          padding = EdgeInsets.only(right: 16);
                        }
                        return Padding(
                            padding: padding,
                            child: RecommendedServiceBox(
                              image: recommendedlist[index].image,
                              rating: '2',
                              servicename: recommendedlist[index].servicename,
                            ) // Assuming OfferSectionBox is your widget
                            );
                      },
                    ),
                  ),
                  SizedBox(height: sizedboxh36),
                  HorizontalLine(),
                  SizedBox(height: sizedboxh24),
                  ServiceHeader(serviceName: 'Most Booked Services'),
                  SizedBox(
                    height: sizedboxh24,
                  ),
                  SizedBox(
                    height: 249, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mostbookedlist.length,
                      itemBuilder: (context, index) {
                        EdgeInsets padding;
                        if (index == 0) {
                          padding = EdgeInsets.only(left: 30, right: 16);
                        } else {
                          padding = EdgeInsets.only(right: 16);
                        }
                        return Padding(
                            padding: padding,
                            child: MostBookedServiceBox(
                              image: mostbookedlist[index].image,
                              price: mostbookedlist[index].price,
                              servicename: mostbookedlist[index].servicename,
                              rating: mostbookedlist[index].rating,
                            ) // Assuming OfferSectionBox is your widget
                            );
                      },
                    ),
                  ),
                  SizedBox(height: sizedboxh36),
                  HorizontalLine(),
                  SizedBox(height: sizedboxh24),
                  ServiceHeader(serviceName: 'Top Servce Providers'),
                  SizedBox(
                    height: sizedboxh24,
                  ),
                  TopServiceBox(),
                  SizedBox(
                    height: sizedboxh24,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class ServiceHeader extends StatelessWidget {
  final String serviceName;
  const ServiceHeader({
    super.key,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.outerPadding,
      child: Row(
        children: [
          Text(
            serviceName,
            style: TextStyles.bold17black24,
          ),
          Spacer(),
          Text(
            'See all',
            style: TextStyles.medium14grey66,
          ),
          SizedBox(width: 10),
          // Icon(Icons.abc)
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            child: Image.asset('assets/arrow_right.png'),
          ),
        ],
      ),
    );
  }
}

class ServiceHeader2 extends StatelessWidget {
  final String serviceName;
  const ServiceHeader2({
    super.key,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.outerPadding,
      child: Row(
        children: [
          Text(
            serviceName,
            style: TextStyles.bold17black24,
          ),
        ],
      ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 4,
      color: Color(0xFFEDEDED),
    );
  }
}

class OfferSectionBox extends StatelessWidget {
  const OfferSectionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final screenwidth = screenWidth(context);
    final sizedboxw22 = screenwidth * 22 / FigmaConstants.figmaDeviceWidth;
    final sizedboxh33 = screenheight * 33 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh5 = screenheight * 5 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh8 = screenheight * 8 / FigmaConstants.figmaDeviceHeight;
    return Stack(
      children: [
        Image.asset('assets/offer_section_img.png'),
        Padding(
          padding: EdgeInsets.only(left: sizedboxw22, top: sizedboxh33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'UP TO 20% OFF',
                style: TextStyles.semiBold14whiteFF,
              ),
              SizedBox(
                height: sizedboxh8,
              ),
              Text(
                'Premium Auto',
                style: TextStyles.semiBold20whiteFF,
              ),
              SizedBox(
                height: sizedboxh5,
              ),
              Text(
                'Detailing Services',
                style: TextStyles.semiBold20whiteFF,
              ),
              SizedBox(
                height: sizedboxh8,
              ),
              Container(
                width: 92,
                height: 33,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Boook now',
                    style: TextStyles.semiBold12black24,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FeaturedServiceBox extends StatelessWidget {
  final String image;
  final String servicecategory;
  final String servicename;
  final String price;
  const FeaturedServiceBox({
    super.key,
    required this.image,
    required this.servicecategory,
    required this.servicename,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = screenHeight(context);
    final screenwidth = screenWidth(context);
    final sizedboxw22 = screenwidth * 22 / FigmaConstants.figmaDeviceWidth;
    final sizedboxh33 = screenheight * 33 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh5 = screenheight * 5 / FigmaConstants.figmaDeviceHeight;
    final sizedboxh8 = screenheight * 8 / FigmaConstants.figmaDeviceHeight;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(image),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white),
                  child: Image.asset('assets/favourite.png')),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Text(
              servicecategory,
              style: TextStyles.medium14grey66,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.star_rounded,
              color: Color(0xFFF9A000),
            ),
            Icon(
              Icons.star_rounded,
              color: Color(0xFFF9A000),
            ),
            Icon(
              Icons.star_rounded,
              color: Color(0xFFF9A000),
            ),
            SizedBox(width: 5)
          ],
        ),
        SizedBox(height: 8),
        Text(
          servicename,
          style: TextStyles.medium13black3B,
        ),
        SizedBox(height: 8),
        Text(
          price,
          style: TextStyles.medium14grey66,
        )
      ],
    );
  }
}

class RecommendedServiceBox extends StatelessWidget {
  final String image;
  final String servicename;
  final String rating;
  const RecommendedServiceBox({
    super.key,
    required this.image,
    required this.servicename,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    List<String> words = servicename.split(' ');
    String displayText = words.sublist(0, words.length - 1).join(' ');
    String lastWord = words.last;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(image),
            Positioned(
                bottom: 16,
                left: 12.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayText,
                      style: TextStyles.semibold16whiteFF,
                    ),
                    SizedBox(height: 3),
                    Text(
                      lastWord,
                      style: TextStyles.semibold16whiteFF,
                    ),
                    VerticalSpacing(height: 6),
                    Container(
                      width: 72,
                      height: 24,
                      decoration: BoxDecoration(
                          color: Color(0xFF4D5652),
                          borderRadius: BorderRadius.all(Radius.circular(59))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFD8D138),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                '4.1',
                                style: TextStyles.regular10whiteFF,
                              ),
                            ),
                          ]),
                    )
                  ],
                )),
            Positioned(
              bottom: 16,
              right: 12,
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white),
                  child: Image.asset('assets/favourite.png')),
            ),
          ],
        ),
      ],
    );
  }
}

class MostBookedServiceBox extends StatelessWidget {
  final String image;

  final String servicename;
  final String price;
  final String rating;
  const MostBookedServiceBox({
    super.key,
    required this.image,
    required this.servicename,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    List<String> words = servicename.split(' ');
    String displayText = words.sublist(0, words.length - 1).join(' ');
    String lastWord = words.last;
    return Container(
      width: 153,
      height: 237,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Color.fromARGB(255, 250, 250, 250),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 225, 225, 225).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            VerticalSpacing(height: 14),
            Text(
              displayText,
              style: TextStyles.medium13black3B,
            ),
            VerticalSpacing(height: 3),
            Text(
              lastWord,
              style: TextStyles.medium13black3B,
            ),
            VerticalSpacing(height: 8),
            Row(
              children: [
                Text(
                  price,
                  style: TextStyles.medium14grey66,
                ),
                Spacer(),
                Icon(
                  Icons.star_rounded,
                  color: Color(0xFFF9A000),
                ),
                SizedBox(width: 4),
                Text(
                  rating,
                  style: TextStyles.medium14grey66,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TopServiceBox extends StatelessWidget {
  const TopServiceBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 84,
              aspectRatio: 294 / 84, // image width 120, height 40
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: false,
              viewportFraction: 0.75,
            ),
            items: [
              // Add your image widgets here
              // Example:
              SliderContents(image: 'assets/top_service_provider_1.png'),
              SliderContents(image: 'assets/top_service_provider_2.png'),
              SliderContents(image: 'assets/top_service_provider_3.png'),
            ],
          ),
        ),
      ],
    );
  }
}

class SliderContents extends StatelessWidget {
  final String image;
  const SliderContents({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 234,
      height: 84,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 219, 219, 219),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 225, 225, 225).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(9)),
      ),
      child: Row(
        children: [
          SizedBox(width: 5),
          Image.asset(image),
          SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home Decor',
                style: TextStyles.medium14black3B,
              ),
              SizedBox(height: 3),
              Text(
                'Palarivattom, Kochi',
                style: TextStyles.medium12grey66,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Color(0xFFF9A000),
                  ),
                  SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      '4.0',
                      style: TextStyles.medium14grey66,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FeaturedModel {
  final String image;
  final String servicecategory;
  final String servicename;
  final String price;

  FeaturedModel(
      {required this.image,
      required this.servicecategory,
      required this.servicename,
      required this.price});
}

class RecommendedModel {
  final String image;

  final String servicename;
  final String rating;

  RecommendedModel({
    required this.image,
    required this.servicename,
    required this.rating,
  });
}

class MostBookedModel {
  final String image;
  final String price;
  final String servicename;
  final String rating;

  MostBookedModel({
    required this.image,
    required this.servicename,
    required this.rating,
    required this.price,
  });
}
