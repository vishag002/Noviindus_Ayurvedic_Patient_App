import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/color_const.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_constants.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_styles.dart';

class BookingCard extends StatelessWidget {
  final int index;
  final String customerName;
  final String description;
  final String date;
  final String staffName;
  final VoidCallback onTap;

  const BookingCard({
    super.key,
    required this.index,
    required this.customerName,
    required this.description,
    required this.date,
    required this.staffName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: AppColors.containerBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Content
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Vikram Singh
                Row(
                  children: [
                    Text("$index.", style: AppTextStyles.cardName),
                    const SizedBox(width: 7),
                    Text(customerName, style: AppTextStyles.cardName),
                  ],
                ),
                // description
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    description,
                    style: AppTextStyles.cardDescription.copyWith(
                      color: AppColors.primary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Date and Staff
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: AppColors.error,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(date, style: AppTextStyles.cardDate),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.groups,
                        color: AppColors.error,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(staffName, style: AppTextStyles.cardDate),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          const Divider(height: 1),
          // Bottom Button Row
          InkWell(
            onTap: onTap,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Text(
                    AppText.viewBookingDetails,
                    style: AppTextStyles.cardDescription,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
