import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_constants.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_styles.dart';
import 'package:noviindus_ayurvedic_patient_app/widgets/custom_text_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.register, style: AppTextStyles.heading1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //name
            CustomTextField(
              label: AppText.name,
              hintText: AppText.enterYourFullName,
            ),

            //whatsapp number
            CustomTextField(
              label: AppText.whatsappNumber,
              hintText: AppText.enterYourWhatsappNumber,
            ),

            //address
            CustomTextField(
              label: AppText.address,
              hintText: AppText.enterYourFullAddress,
            ),

            //location
            CustomTextField(
              label: AppText.location,
              hintText: AppText.chooseYourLocation,
            ),

            //branch
            CustomTextField(
              label: AppText.branch,
              hintText: AppText.selectTheBranch,
            ),

            //treatmentwidget
            //
            //total amount
            CustomTextField(label: AppText.totalAmount, hintText: ""),

            //discount amount
            CustomTextField(label: AppText.discountAmount, hintText: ""),
            //payment cash radio button
            //advance amount
            CustomTextField(
              label: AppText.advanceAmount,
              hintText: AppText.enterYourFullName,
            ),
            //balance amount
            //treatment date
            //save button
          ],
        ),
      ),
    );
  }
}
