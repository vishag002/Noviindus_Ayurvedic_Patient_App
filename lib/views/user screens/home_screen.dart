import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/color_const.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_constants.dart';
import 'package:noviindus_ayurvedic_patient_app/core/text_styles.dart';
import 'package:noviindus_ayurvedic_patient_app/widgets/patients_details_card.dart';
import 'package:noviindus_ayurvedic_patient_app/widgets/primary_buttons_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        actions: [
          IconButton(
            onPressed: () {
              //ontap
            },
            icon: Icon(Icons.notifications_none_sharp, size: 30),
          ),
        ],
      ),

      body: Column(
        children: [
          SearchWidget(),
          SortWidget(),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return BookingCard(
                  index: 1,
                  customerName: "Vikram Singh",
                  description: "Couple Combo Package (Rejuvenation + Spa...)",
                  date: "31/01/2024",
                  staffName: "Jithesh",
                  onTap: () {
                    // Navigate to details screen
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,

        elevation: 0,
        child: PrimaryButton(
          buttonText: AppText.registerNow,
          ontap: () {
            // onTap action
          },
        ),
      ),
    );
  }
}

//search widget
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.width * 0.05),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: size.height * 0.05,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.containerBg,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: AppText.searchForTreatments,
                        hintStyle: AppTextStyles.hintText,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: size.height * 0.05,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  AppText.search,
                  style: AppTextStyles.buttonTextSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//sort widget
class SortWidget extends StatelessWidget {
  const SortWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppText.sortBy, style: AppTextStyles.body1),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Text(AppText.date, style: AppTextStyles.body1),
                const SizedBox(width: 15),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
