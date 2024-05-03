import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopNavOfferSection extends StatelessWidget {
  const TopNavOfferSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);
    final screenheight = screenHeight(context);
    final offersectionHeight =
        screenheight * 60 / FigmaConstants.figmaDeviceHeight;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: screenwidth,
          height: offersectionHeight,
          color: ColorConstants.purpleColorF8,
          child: Padding(
            padding: PaddingConstant.outerPadding,
            child: Row(
              children: [
                SvgPicture.asset('assets/home/extras/offers_ticket.svg'),
                const SizedBox(width: 12),
                Text(
                  'Save 15% on every service',
                  style: TextStyles.semibold16black1A,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: ColorConstants.secondaryTextColor,
                ),
              ],
            ),
          ),
        ),
        DottedLine(dashColor: ColorConstants.greyD7),
      ],
    );
  }
}
