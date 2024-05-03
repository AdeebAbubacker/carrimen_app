import 'package:carrimen_app/core/constants/common.dart';
import 'package:carrimen_app/core/constants/const.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);
    final screenheight = screenHeight(context);
    final double searchFieldwidth =
        screenwidth * 333 / FigmaConstants.figmaDeviceWidth;
    final double searchFieldHeight =
        screenheight * 44 / FigmaConstants.figmaDeviceHeight;
    final double horizontalPadding =
        screenheight * 16 / FigmaConstants.figmaDeviceHeight;
    final double verticalPadding =
        screenwidth * 14 / FigmaConstants.figmaDeviceWidth;
    return SizedBox(
      width: searchFieldwidth,
      height: searchFieldHeight,
      child: TextField(
        style: TextStyle(color: Colors.black),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5, bottom: 5),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 4,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(9)),
          ),
          prefixIcon: Image.asset('assets/search_icon.png'),
          suffixIcon: Image.asset('assets/speak_icon.png'),
        ),
      ),
    );
  }
}
