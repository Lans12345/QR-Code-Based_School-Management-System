import 'package:flutter/material.dart';
import 'package:qr_school_management/utils/colors.dart';
import 'package:qr_school_management/widgets/text_bold.dart';

PreferredSizeWidget AppBarWidget(String text) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: primaryColor,
    title: TextBold(text: text, fontSize: 18, color: Colors.white),
    centerTitle: true,
  );
}
