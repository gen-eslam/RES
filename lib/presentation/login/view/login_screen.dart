import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant/core/theme/colors_manager.dart';
import 'package:restorant/core/theme/text_style_manager.dart';
import 'package:restorant/core/utils/image_manager.dart';
import 'package:restorant/core/utils/string_manager.dart';
import 'package:restorant/core/widget/custom_elevated_button.dart';
import 'package:restorant/core/widget/custom_text.dart';
import 'package:restorant/core/widget/custom_text_form_field.dart';
import 'package:restorant/presentation/login/widget/logo_and_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: ListView(
            children: [
              const LogoAndTitle(),
              const CustomTextFormField(
                hintText: "Enter your email",
                labelText: "Email",
              ),
              const Divider(
                color: Colors.transparent,
              ),
              const CustomTextFormField(
                hintText: "enter your password",
                labelText: "Password",
                isPassword: true,
              ),
              const Divider(
                color: Colors.transparent,
              ),
              CustomElevatedButton(
                text: "Login",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
