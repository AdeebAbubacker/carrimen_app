import 'package:carrimen_app/core/constants/const.dart';
import 'package:carrimen_app/core/constants/text_styles.dart';
import 'package:carrimen_app/ui/screens/home/widgets/bottom_sheet_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarriCategory extends StatelessWidget {
  final String category;
  final List<CategoriesItemModel> carriCategoryItem;
  const CarriCategory({
    super.key,
    required this.carriCategoryItem,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, 
      children: [
        HorizontalLine(),
        VerticalSpacing(height: 24),
        Padding(
          padding: PaddingConstant.categoriesPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyles.medium11black00,
              ),
              VerticalSpacing(height: 16),
              Wrap(
                alignment: WrapAlignment
                    .start, 
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,
                spacing: 16, // Horizontal spacing between items
                runSpacing: 15, // Vertical spacing between lines
                children: carriCategoryItem.map((item) {
                  return CategoriesItem(
                    content: item.content,
                    image: item.image,
                  );
                }).toList(),
              ),
              VerticalSpacing(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}



class CategoriesItem extends StatelessWidget {
  final String image;
  final String content;
  const CategoriesItem({
    required this.image,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 31,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Color(0xFFEDEDED)),
          ),
          child: Row(
            children: [
              HorizontalSpacing(width: 14),
              SvgPicture.asset(
                image,
                width: 24, 
                height: 24,
              ),
              HorizontalSpacing(width: 6),
              Text(
                content,
                style: TextStyles.medium10grey77,
              ),
              HorizontalSpacing(width: 8),
            ],
          ),
        ),
      ],
    );
  }
}


class CategoriesItemModel {
  final String image;
  final String content;

  CategoriesItemModel({required this.image, required this.content});
}