import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant/core/routes/routes.dart';
import 'package:restorant/core/routes/routes_extention.dart';
import 'package:restorant/core/theme/colors_manager.dart';
import 'package:restorant/core/theme/text_style_manager.dart';
import 'package:restorant/core/utils/image_manager.dart';
import 'package:restorant/core/utils/string_manager.dart';
import 'package:restorant/core/widget/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.loginScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageManager.logo,
              ),
              const Divider(
                color: Colors.transparent,
              ),
              const CustomText(
                text: StringManager.restaurant,
                style: TextStyleManager.textStyle30w500,
                color: ColorsManager.deepRed,
                fontStyle: FontStyle.italic,
              )
            ],
          )),
    );
  }
}
