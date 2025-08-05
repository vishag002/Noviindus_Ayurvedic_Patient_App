// primary button
import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/color_const.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback ontap;
  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: InkWell(
        onTap: () => ontap(),
        child: Container(
          height: MediaQuery.of(context).size.height * .055,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: AppTextStyles.buttonTextPrimary, // Customize as needed
            ),
          ),
        ),
      ),
    );
  }
}
