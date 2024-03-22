import 'package:carryman_app/theme/axiforma_theme.dart';
import 'package:flutter/material.dart';

class CarrimenHome extends StatelessWidget {
  final CustomTextStyle customTextStyle = CustomTextStyle();
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
                  Image.asset('assets/home_icon.png'),
                  Text(
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
                  Image.asset('assets/favourites.png'),
                  Text(
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
                  Image.asset('assets/categories_icon.png'),
                  Text(
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
                    color: const Color.fromARGB(255, 255, 7, 176),
                  ),
                  Text(
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
                  Image.asset('assets/Profile.png'),
                  Text(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(
                  left: 9,
                  right: 9,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(Icons.location_on_outlined),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${'Ernakulam'.substring(0, 4)}...', // Display only the first 4 letters followed by ...
                          style: customTextStyle.axiformaTextStyle(
                            fontSize: 12,
                            color: const Color(0xFF777777),
                            fontWeight: FontWeight.w500,
                          ), // Adjust the font size as needed
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    const SizedBox(width: 50),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'CARRI',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontFamily: 'Axiforma',
                            fontSize: 14,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'MEN',
                          style: TextStyle(
                            letterSpacing: 2,
                            fontFamily: 'Axiforma',
                            fontSize: 14,
                            color: Color(0xFFC83E96),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset('assets/notifications_icon.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: width,
                height: 60,
                color: const Color(0xFFFFEBF8),
                child: Row(children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/offers_ticket.png',
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Save 15% on every service',
                    style: customTextStyle.axiformaTextStyle(
                      fontSize: 16,
                      color: const Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF777777),
                  ),
                  const SizedBox(width: 10)
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 9,
                  right: 9,
                ),
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
                        style: customTextStyle.axiformaTextStyle(
                          fontSize: 16,
                          color: const Color(0xFFC83E96),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Good Morning',
                        style: customTextStyle.axiformaTextStyle(
                          fontSize: 12,
                          color: const Color(0xFF242424),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 9,
                  right: 9,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      'Personal Services',
                      style: customTextStyle.axiformaTextStyle(
                        fontSize: 20,
                        color: const Color(0xFF242424),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GridView.builder(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: personalservice.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (context, index) {
                        final content = personalservice[index].text;
                        final List<String> words =
                            content.split(' '); // Split on spaces
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
                    // Container(
                    //   width: 390,
                    //   height: 50,
                    //   color: Colors.amber,
                    //   child: Column(
                    //     children: [Text('Show More')],
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
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
  final CustomTextStyle customTextStyle = CustomTextStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 100,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 243, 243, 243),
      ),
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
                  style: customTextStyle.axiformaTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF777777),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  lastWord, // Use the extracted lastWord
                  style: customTextStyle.axiformaTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF777777),
                    fontWeight: FontWeight.w500,
                  ),
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
