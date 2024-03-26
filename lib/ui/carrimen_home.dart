import 'package:carryman_app/core/constant/constants.dart';
import 'package:carryman_app/core/constant/text_styles.dart';

import 'package:flutter/material.dart';

class CarrimenHome extends StatelessWidget {
  CarrimenHome({Key? key});

  List<PersonalServiceContent> personalservice = [
    PersonalServiceContent(
        img: 'assets/carri_cleaning.png', text: 'Carri cleaning'),
    PersonalServiceContent(img: 'assets/carri_care.png', text: 'Carri Care'),
    PersonalServiceContent(
        img: 'assets/carri_professional.png', text: 'Carri Professional'),
    PersonalServiceContent(
        img: 'assets/carri_digital_service.png', text: 'Carri Digital Service'),
    PersonalServiceContent(
        img: 'assets/carri_wallah.png', text: 'Carri Wallah'),
    PersonalServiceContent(
        img: 'assets/carri_kitchen.png', text: 'Carri Kitchen'),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomAppBar(
          color: Colors.white,
          elevation: 4.0, // Add shadow
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/home_icon.png',
                    color: const Color.fromARGB(255, 185, 7, 129),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/favourites.png',
                    color: const Color.fromARGB(255, 185, 7, 129),
                  ),
                  const Text(
                    'Favourites',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/categories_icon.png',
                    color: const Color.fromARGB(255, 185, 7, 129),
                  ),
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/booking.png',
                    color: const Color.fromARGB(255, 185, 7, 129),
                  ),
                  const Text(
                    'Booking',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/Profile.png',
                    color: const Color.fromARGB(255, 185, 7, 129),
                  ),
                  const Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const TopNav(),
                TopNavOfferSection(
                  width: width,
                ),
                const SizedBox(
                  height: 30,
                ),
                const ProfileSection(),
                const SizedBox(
                  height: 5,
                ),
                const SearchField(),
                PersonalServicesSection(personalservice: personalservice),
                const ShowMoreButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: homescreen_padding,
      child: Container(
        width: 333,
        height: 32,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 243, 243, 243),
        ),
        child: Center(
            child: Text(
          'Show More',
          style: TextStyles.axiforma12GreyW500,
        )),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: homescreen_padding,
          child: SizedBox(
            width: 332,
            height: 50,
            child: TextField(
              style: TextStyles.axiforma11GreyMed,
              cursorHeight: 20,
              decoration: InputDecoration(
                hintText: 'Search for Services',
                hintStyle: TextStyles.axiforma11GreyMed,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {
                    // Handle voice search action
                  },
                  icon: const Icon(Icons.mic),
                ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PersonalServicesSection extends StatelessWidget {
  const PersonalServicesSection({
    super.key,
    required this.personalservice,
  });

  final List<PersonalServiceContent> personalservice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: homescreen_padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text('Personal Services',
              style: TextStyles.axiforma20CharcoalGreyBold),
          GridView.builder(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: personalservice.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (context, index) {
              final content = personalservice[index].text;
              final List<String> words = content.split(' '); // Split on spaces
              final firstPart = words.length > 1
                  ? words.sublist(0, words.length - 1).join(' ')
                  : content; // Join all except last

              return Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: PersonalServiceContainer(
                  image: personalservice[index].img,
                  content: firstPart,
                  lastWord: words.isNotEmpty ? words.last : '',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TopNav extends StatelessWidget {
  const TopNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 59,
      child: Padding(
        padding: homescreen_padding,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(Icons.location_on_outlined),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    '${'Ernakulam'.substring(0, 4)}...', // Display only the first 4 letters followed by ...
                    style: TextStyles.axiforma12GreyW500),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
            const SizedBox(width: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('CARRI', style: TextStyles.axiforma14BlackBoldLsp6),
                Text('MEN', style: TextStyles.axiforma14PinkBoldLsp6),
              ],
            ),
            const Spacer(),
            Image.asset('assets/notifications_icon.png'),
          ],
        ),
      ),
    );
  }
}

class TopNavOfferSection extends StatelessWidget {
  const TopNavOfferSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      color: const Color(0xFFFFEBF8),
      child: Padding(
        padding: homescreen_padding,
        child: Row(children: [
          Image.asset(
            'assets/offers_ticket.png',
          ),
          const SizedBox(width: 10),
          Text(
            'Save 15% on every service',
            style: TextStyles.axiforma16DarkGreyW500,
            // customTextStyle.axiformaTextStyle(
            //   fontSize: 16,
            //   color: const Color(0xFF1A1A1A),
            //   fontWeight: FontWeight.w500,
            // ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xFF777777),
          ),
        ]),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: homescreen_padding,
      child: SizedBox(
        height: 56,
        width: 333,
        child: Row(children: [
          Image.asset('assets/avatar_image.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Allen!',
                style: TextStyles.axiforma16PinkBold,
              ),
              Text(
                'Good Morning',
                style: TextStyles.axiforma12CharcoalGreyBold,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class PersonalServiceContainer extends StatelessWidget {
  PersonalServiceContainer({
    super.key,
    required this.image,
    required this.content,
    required this.lastWord,
  });

  final image;
  final content;
  final lastWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 100,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 243, 243, 243),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyles.axiforma12GreyW500,

                  // customTextStyle.axiformaTextStyle(
                  //   fontSize: 12,
                  //   color: const Color(0xFF777777),
                  //   fontWeight: FontWeight.w500,
                  // ),
                ),
                Text(
                  lastWord, // Use the extracted lastWord
                  style: TextStyles.axiforma12GreyW500,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  image,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalServiceContent {
  final img;
  final text;
  PersonalServiceContent({
    required this.text,
    required this.img,
  });
}

// class BottomSheetOne extends StatelessWidget {
//   BottomSheetOne({
//     super.key,
//   });
//   List<String> images = [
//     'assets/Offers_section.png',
//     'assets/Offers_section.png',
//     'assets/Offers_section.png',
//   ];
//   List<String> featuredService_img = [
//     'assets/Carri Cleaning_1.png',
//     'assets/Carri Wallah.png',
//     'assets/Carri_Cleaning_2.png',
//     'assets/Carri_Cleaning_3.png',
//   ];

//   List<String> recommended = [
//     'assets/Recommendation1.png',
//     'assets/Recommendation 2.png',
//     'assets/Recommendation 3.png',
//     'assets/Recommendation 4.png',
//     'assets/Recommendation 5.png'
//   ];

//   List<String> most_booked_services = [
//     'assets/most_booked_1.png',
//     'assets/most_booked_2.png',
//     'assets/most_booked_3.png',
//     'assets/most_booked_4.png',
//   ];

//   List<String> service_providers = [
//     'assets/service_provider_1.png',
//     'assets/service_provider_2.png',
//     'assets/service-provider_3.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         SizedBox(
//           height: MediaQuery.of(context).size.height *
//               0.9, // Adjust the height as needed
//           child: DraggableScrollableSheet(
//             initialChildSize: 0.3,
//             minChildSize: 0.1,
//             maxChildSize: 0.9,
//             builder: (BuildContext context, ScrollController scrollController) {
//               return Container(
//                 decoration: const BoxDecoration(
//                   color: Color.fromARGB(255, 255, 255, 255),
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(20.0),
//                   ),
//                 ),
//                 child: ListView.builder(
//                   controller: scrollController,
//                   itemCount: 1,
//                   itemBuilder: (BuildContext context, int index) {
//                     // return ListTile(
//                     //   title: Text('Item $index'),
//                     // );
//                     return Padding(
//                       padding: const EdgeInsets.only(
//                         left: 9,
//                         right: 9,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(height: 20),
//                           Center(
//                             child: Container(
//                               width: 80,
//                               height: 4,
//                               decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(6)),
//                                 color: Color(0xFFB8B8B8),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 40),
//                           Row(
//                             children: [
//                               Text(
//                                 'Offers',
//                                 style: TextStyles.axiforma20CharcoalGreyBold,
//                               ),
//                               const Spacer(),
//                               Text(
//                                 'See all',
//                                 style: TextStyles.axiforma16Grey666W500,
//                               ),
//                               const SizedBox(width: 10),
//                               const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 color: Color(0xFF666666),
//                                 size: 17,
//                               )
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           CarouselSlider(
//                             items: images.map((image) {
//                               return Builder(
//                                 builder: (BuildContext context) {
//                                   return ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       image,
//                                       fit: BoxFit.fill,
//                                       errorBuilder:
//                                           (context, error, stackTrace) =>
//                                               const Icon(Icons.error),
//                                     ),
//                                   );
//                                 },
//                               );
//                             }).toList(),
//                             options: CarouselOptions(
//                               height: 200,
//                               aspectRatio: 2 / 9,
//                               viewportFraction: 1,
//                               initialPage: 0,
//                               enableInfiniteScroll: true,
//                               reverse: false,
//                               autoPlay: false,
//                               autoPlayInterval: const Duration(seconds: 3),
//                               autoPlayAnimationDuration:
//                                   const Duration(milliseconds: 800),
//                               enlargeCenterPage: true,
//                               onPageChanged: (index, reason) {
//                                 // Handle page change
//                                 print('Page changed to index $index');
//                               },
//                               scrollDirection: Axis.horizontal,
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           Row(
//                             children: [
//                               Text(
//                                 'Featured Services',
//                                 style: TextStyles.axiforma20CharcoalGreyBold,
//                               ),
//                               const Spacer(),
//                               Text(
//                                 'See all',
//                                 style: TextStyles.axiforma16Grey666W500,
//                               ),
//                               const SizedBox(width: 10),
//                               const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 color: Color(0xFF666666),
//                                 size: 17,
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                               height: 262,
//                               child: ListView.builder(
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: featuredService_img.length,
//                                 itemBuilder: (context, index) {
//                                   return Padding(
//                                     padding: EdgeInsets.only(right: 20),
//                                     child: Container(
//                                       width: 225,
//                                       height: 160,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Image.asset(
//                                             featuredService_img[index],
//                                             width: 225,
//                                             height: 160,
//                                           ),
//                                           SizedBox(height: 10),
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 'Carry Wallah',
//                                                 style: customTextStyle
//                                                     .axiformaTextStyle(
//                                                   fontSize: 14,
//                                                   color:
//                                                       const Color(0xFF666666),
//                                                   fontWeight: FontWeight.w400,
//                                                 ),
//                                               ),
//                                               Spacer(),
//                                               Icon(
//                                                 Icons.star,
//                                                 color: Color(0xFFF9A000),
//                                               ),
//                                               Icon(
//                                                 Icons.star,
//                                                 color: Color(0xFFF9A000),
//                                               ),
//                                               Icon(Icons.star),
//                                             ],
//                                           ),
//                                           SizedBox(height: 5),
//                                           Text(
//                                             'Food Delivery',
//                                             style: customTextStyle
//                                                 .axiformaTextStyle(
//                                               fontSize: 16,
//                                               color: const Color(0xFF666666),
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                           Text(
//                                             'Rs 250',
//                                             style: customTextStyle
//                                                 .axiformaTextStyle(
//                                               fontSize: 14,
//                                               color: const Color(0xFF666666),
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               )),
//                           Row(
//                             children: [
//                               Text(
//                                 'Recommendations',
//                                 style: TextStyles.axiforma20CharcoalGreyBold,
//                               ),
//                               const Spacer(),
//                               Text(
//                                 'See all',
//                                 style: TextStyles.axiforma16Grey666W500,
//                               ),
//                               const SizedBox(width: 10),
//                               const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 color: Color(0xFF666666),
//                                 size: 17,
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 260,
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: recommended.length,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding: const EdgeInsets.only(right: 10),
//                                   child: Stack(
//                                     children: [
//                                       Image.asset(
//                                         recommended[index],
//                                         width: 143,
//                                         height: 240,
//                                       ),
//                                       Positioned(
//                                           left: 10,
//                                           top: 180,
//                                           child: Text(
//                                             'Cleaning',
//                                             style: customTextStyle
//                                                 .axiformaTextStyle(
//                                               fontSize: 14,
//                                               color: const Color(0xFFFFFFFF),
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           )),
//                                       Positioned(
//                                         left: 10,
//                                         top: 199,
//                                         child: Text(
//                                           'Kitchen',
//                                           style:
//                                               customTextStyle.axiformaTextStyle(
//                                             fontSize: 14,
//                                             color: const Color(0xFFFFFFFF),
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 'Most Booked Services',
//                                 style: TextStyles.axiforma20CharcoalGreyBold,
//                               ),
//                               const Spacer(),
//                               Text(
//                                 'See all',
//                                 style: TextStyles.axiforma16Grey666W500,
//                               ),
//                               const SizedBox(width: 10),
//                               const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 color: Color(0xFF666666),
//                                 size: 17,
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                               height: 262,
//                               child: ListView.builder(
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: most_booked_services.length,
//                                 itemBuilder: (context, index) {
//                                   return Padding(
//                                     padding: const EdgeInsets.only(right: 20),
//                                     child: SizedBox(
//                                       width: 135,
//                                       height: 160,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Image.asset(
//                                             most_booked_services[index],
//                                             width: 135,
//                                             height: 135,
//                                           ),
//                                           const SizedBox(height: 10),
//                                           Text(
//                                             'Carry Wallah',
//                                             style: customTextStyle
//                                                 .axiformaTextStyle(
//                                               fontSize: 14,
//                                               color: const Color(0xFF666666),
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                           const SizedBox(height: 5),
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 'Rs 250',
//                                                 style: customTextStyle
//                                                     .axiformaTextStyle(
//                                                   fontSize: 14,
//                                                   color:
//                                                       const Color(0xFF666666),
//                                                   fontWeight: FontWeight.w400,
//                                                 ),
//                                               ),
//                                               const Spacer(),
//                                               const Icon(
//                                                 Icons.star,
//                                                 color: Color(0xFFF9A000),
//                                               ),
//                                               const Text('4.0'),
//                                               const SizedBox(width: 6)
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               )),
//                           Row(
//                             children: [
//                               Text(
//                                 'Top Service Providers',
//                                 style: TextStyles.axiforma20CharcoalGreyBold,
//                               ),
//                               const Spacer(),
//                               Text(
//                                 'See all',
//                                 style: TextStyles.axiforma16Grey666W500,
//                               ),
//                               const SizedBox(width: 10),
//                               const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 color: Color(0xFF666666),
//                                 size: 17,
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                               height: 82,
//                               child: ListView.builder(
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: service_providers.length,
//                                 itemBuilder: (context, index) {
//                                   return Padding(
//                                     padding: const EdgeInsets.only(right: 20),
//                                     child: Container(
//                                       width: 234,
//                                       height: 84,
//                                       decoration: BoxDecoration(
//                                           borderRadius: const BorderRadius.all(
//                                               Radius.circular(9)),
//                                           border: Border.all(
//                                             color: const Color.fromARGB(
//                                                 255, 228, 229, 230),
//                                             width: 2,
//                                           )),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         children: [
//                                           Image.asset(service_providers[index]),
//                                           Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Home Decor',
//                                                 style: TextStyles
//                                                     .axiforma14darkBlue3BW500,
//                                               ),
//                                               Text(
//                                                 'Palarivattom, Kochi',
//                                                 style: customTextStyle
//                                                     .axiformaTextStyle(
//                                                   fontSize: 12,
//                                                   color:
//                                                       const Color(0xFF666666),
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   const Icon(
//                                                     Icons.star,
//                                                     color: Color(0xFFF9A000),
//                                                   ),
//                                                   const SizedBox(width: 3),
//                                                   Text(
//                                                     '4.0',
//                                                     style: customTextStyle
//                                                         .axiformaTextStyle(
//                                                       fontSize: 12,
//                                                       color: const Color(
//                                                           0xFF1E293B),
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                     ),
//                                                   )
//                                                 ],
//                                               ),
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                     ),

//                                     // SizedBox(
//                                     //   width: 135,
//                                     //   height: 160,
//                                     //   child: Column(
//                                     //     crossAxisAlignment:
//                                     //         CrossAxisAlignment.start,
//                                     //     children: [
//                                     //       Image.asset(
//                                     //         most_booked_services[index],
//                                     //         width: 135,
//                                     //         height: 135,
//                                     //       ),
//                                     //       const SizedBox(height: 10),
//                                     //       Text(
//                                     //         'Carry Wallah',
//                                     //         style: customTextStyle
//                                     //             .axiformaTextStyle(
//                                     //           fontSize: 14,
//                                     //           color: const Color(0xFF666666),
//                                     //           fontWeight: FontWeight.w400,
//                                     //         ),
//                                     //       ),
//                                     //       const SizedBox(height: 5),
//                                     //       Row(
//                                     //         children: [
//                                     //           Text(
//                                     //             'Rs 250',
//                                     //             style: customTextStyle
//                                     //                 .axiformaTextStyle(
//                                     //               fontSize: 14,
//                                     //               color:
//                                     //                   const Color(0xFF666666),
//                                     //               fontWeight: FontWeight.w400,
//                                     //             ),
//                                     //           ),
//                                     //           const Spacer(),
//                                     //           const Icon(
//                                     //             Icons.star,
//                                     //             color: Color(0xFFF9A000),
//                                     //           ),
//                                     //           const Text('4.0'),
//                                     //           const SizedBox(width: 6)
//                                     //         ],
//                                     //       )
//                                     //     ],
//                                     //   ),
//                                     // ),
//                                   );
//                                 },
//                               )),
//                           SizedBox(height: 40)
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
