
import 'package:flutter/material.dart';
import 'package:restorant/core/theme/colors_manager.dart';
import 'package:restorant/core/theme/text_style_manager.dart';
import 'package:restorant/core/utils/image_manager.dart';
import 'package:restorant/core/utils/string_manager.dart';
import 'package:restorant/core/widget/custom_text.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageManager.logo,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        const CustomText(
          text: StringManager.restaurant,
          style: TextStyleManager.textStyle30w500,
          color: ColorsManager.yellow,
          fontStyle: FontStyle.italic,
        ),
      ],
    );
  }
}
