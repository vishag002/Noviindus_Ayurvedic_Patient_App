import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/color_const.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 30),

            //treatmentwidget
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(AppText.treatments, style: AppTextStyles.body1),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  AppText.addTreatments,
                  style: AppTextStyles.buttonTextPrimary.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            //
            //total amount
            CustomTextField(label: AppText.totalAmount, hintText: ""),

            //discount amount
            CustomTextField(label: AppText.discountAmount, hintText: ""),

            //payment cash radio button
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Text(AppText.treatments, style: AppTextStyles.body1),
            ),

            SizedBox(height: 20),

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

//add treatment widget
class AddTreatmentWidget extends StatelessWidget {
  const AddTreatmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.primary,
      ),
    );
  }
}
