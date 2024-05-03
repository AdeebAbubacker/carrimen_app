import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalServiceGrid extends StatelessWidget {
  const PersonalServiceGrid({
    super.key,
    required this.personalservice,
  });

  final List<PersonalServiceContent> personalservice;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: personalservice.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 20,
        childAspectRatio: 157 / 60,
      ),
      itemBuilder: (context, index) {
        final content = personalservice[index].text;
        final List<String> words = content.split(' '); // Split on spaces
        final firstPart = words.length > 1
            ? words.sublist(0, words.length - 1).join(' ')
            : content; // Join all except last
        return PersonalServiceButton(
          firstPart: firstPart,
          words: words,
          image: SvgPicture.asset(personalservice[index].img),
          //Image.asset(personalservice[index].img),
        );
      },
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

class PersonalServiceButton extends StatelessWidget {
  const PersonalServiceButton({
    super.key,
    required this.firstPart,
    required this.words,
    required this.image,
  });

  final firstPart;
  final List<String> words;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);
    // final screenheight = screenHeight(context);
    final sizedboxw14 = screenwidth * 14 / FigmaConstants.figmaDeviceWidth;

    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 243, 243),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: EdgeInsets.only(left: sizedboxw14, right: sizedboxw14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstPart,
                  style: TextStyles.medium12grey77,
                ),
                SizedBox(height: 2),
                Text(
                  words.isNotEmpty ? words.last : '',
                  style: TextStyles.medium12grey77,
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [image],
            ),
          ],
        ),
      ),
    );
  }
}
