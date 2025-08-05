import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/color_const.dart';

class AppTextStyles {
  /// Heading 1
  static const TextStyle heading1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w600, // SemiBold
    height: 1.4, // 140%
    letterSpacing: 0.0,
    color: AppColors.textPrimary,
  );

  /// Body 1
  static const TextStyle body1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.textPrimary,
  );

  /// Hint Text
  static const TextStyle hintText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w300, // Light
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.textSecondary,
  );

  /// Card Description
  static const TextStyle cardDescription = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w300, // Light
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.textSecondary,
  );

  /// Card Name
  static const TextStyle cardName = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w500, // Medium
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.textPrimary,
  );

  /// Card Date
  static const TextStyle cardDate = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    fontWeight: FontWeight.w400, // Regular
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.textSecondary,
  );

  /// Button Text
  static const TextStyle buttonTextPrimary = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 17,
    fontWeight: FontWeight.w600, // SemiBold
    height: 1.0,
    letterSpacing: 1.0, // 1%
    color: AppColors.background,
  );
  static const TextStyle buttonTextSecondary = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w500, // SemiBold
    height: 1.0,
    letterSpacing: 1.0, // 1%
    color: AppColors.background,
  );

  /// Highlight Text
  static const TextStyle highlightText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w300, // Light
    height: 1.0,
    color: AppColors.textPrimary,
  );
}
