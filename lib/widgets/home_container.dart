import 'package:flutter/material.dart';
import 'package:qr_school_management/utils/colors.dart';
import 'package:qr_school_management/widgets/text_regular.dart';

class HomeContainer extends StatelessWidget {
  late String label;

  late IconData icon;
  late VoidCallback onPressed;

  HomeContainer(
      {required this.label, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black45,
              size: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            TextRegular(text: label, fontSize: 24, color: Colors.black38),
          ],
        ),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
