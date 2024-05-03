import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const ColoredButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
    double screenwidth = screenWidth(context);
    final buttonwidth = screenwidth * 335 / FigmaConstants.figmaDeviceWidth;
    final buttonheight = screenheight * 56 / FigmaConstants.figmaDeviceHeight;

    return SizedBox(
      width: buttonwidth,
      height: buttonheight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.purpleColor96,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(text, style: TextStyles.semibold16whiteFF),
      ),
    );
  }
}

class ColorlessButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const ColorlessButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
    double screenwidth = screenWidth(context);
    final buttonwidth = screenwidth * 335 / FigmaConstants.figmaDeviceWidth;
    final buttonheigth = screenheight * 56 / FigmaConstants.figmaDeviceHeight;
    return SizedBox(
      width: buttonwidth,
      height: buttonheigth,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            ColorConstants.whiteColorFF,
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(
                color: ColorConstants.purpleColor96,
                width: 1.0,
              ),
            ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyles.semibold16purple96,
        ),
      ),
    );
  }
}

// class GreyColorButton extends StatelessWidget {
//   final VoidCallback? onPressed;
//   final String text;
//   final  icon;

//   const GreyColorButton({
//     super.key,
//     required this.text,
//     required this.icon,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     double screenheight = screenHeight(context);
//     double screenwidth = screenWidth(context);
//     final buttonwidth = screenwidth * 335 / FigmaConstants.figmaDeviceWidth;
//     final buttonheigth = screenheight * 56 / FigmaConstants.figmaDeviceHeight;
//     return SizedBox(
//       width: buttonwidth,
//       height: buttonheigth,
//       child: TextButton.icon(
//         onPressed: onPressed,
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all<Color>(
//             ColorConstants.greyF5,
//           ),
//           shape: MaterialStateProperty.all<OutlinedBorder>(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               side: const BorderSide(
//                 color: ColorConstants.greyF5,
//                 width: 1.0,
//               ),
//             ),
//           ),
//         ),
//         label: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: TextStyles.medium14grey77,
//         ),
//         icon:Icon(icon as IconData?,) ,
//       ),
//     );
//   }
// }

class GreyColorButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final String iconPath;
  final Color textcolor, iconcolor;

  const GreyColorButton({
    super.key,
    required this.text,
    required this.iconPath,
    required this.textcolor,
    required this.iconcolor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
    double screenwidth = screenWidth(context);
    final buttonwidth = screenwidth * 331 / FigmaConstants.figmaDeviceWidth;
    final buttonheigth = screenheight * 56 / FigmaConstants.figmaDeviceHeight;
    return SizedBox(
      width: buttonwidth,
      height: buttonheigth,
      child: 
      TextButton(onPressed: (){},
      
      style:ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            ColorConstants.greyF5,
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(
                color: ColorConstants.greyF5,
                width: 1.0,
              ),
            ),
          ),
        ) , child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Logout',style: TextStyle(color:textcolor),),
            SizedBox(width: 10),
            ImageIcon(AssetImage(iconPath),color: iconcolor,),
          ],
        ),)

   
   
    );
  }
}

class AddToCartButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const AddToCartButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = screenHeight(context);
    double screenwidth = screenWidth(context);
    final buttonwidth = screenwidth * 133 / FigmaConstants.figmaDeviceWidth;
    final buttonheight = screenheight * 36 / FigmaConstants.figmaDeviceHeight;

    return SizedBox(
      width: buttonwidth,
      height: buttonheight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.purpleColor96,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(text, style: TextStyles.semiBold14whiteFF),
      ),
    );
  }
}
