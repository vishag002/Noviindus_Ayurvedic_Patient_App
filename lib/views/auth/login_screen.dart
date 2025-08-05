import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noviindus_ayurvedic_patient_app/core/color_const.dart';
import 'package:noviindus_ayurvedic_patient_app/core/image_const.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_constants.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_styles.dart';
import 'package:noviindus_ayurvedic_patient_app/widgets/custom_text_field_widget.dart';
import 'package:noviindus_ayurvedic_patient_app/widgets/primary_buttons_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      //appBar: AppBar(title: Text("login screen")),
      body: Column(
        children: [
          HeaderWidget(),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              top: size.height * 0.03,
            ),
            child: Text(AppText.loginOrRegister, style: AppTextStyles.heading1),
          ),
          SizedBox(height: size.height * 0.06),

          CustomTextField(label: AppText.email, hintText: AppText.enterEmail),
          SizedBox(height: size.height * 0.015),
          CustomTextField(
            label: AppText.password,
            hintText: AppText.enterPassword,
          ),
          SizedBox(height: size.height * 0.09),

          PrimaryButton(
            buttonText: AppText.login,
            ontap: () {
              //ontap
              context.go('/home');
            },
          ),
          SizedBox(height: size.height * 0.07),

          //text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Text(
              AppText.authAgreement,
              style: AppTextStyles.highlightText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

//header Widget
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.loginScreenImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(child: Image.asset(AppImages.loginScreenIcon)),
    );
  }
}
