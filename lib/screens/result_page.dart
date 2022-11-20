import 'package:flutter/material.dart';
import 'package:qr_school_management/screens/home_page.dart';
import 'package:qr_school_management/widgets/button_widget.dart';
import 'package:qr_school_management/widgets/text_bold.dart';
import 'package:qr_school_management/widgets/text_regular.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarWidget('CpE - 3B'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextBold(
                        text: 'Class Schedule',
                        fontSize: 28,
                        color: Colors.black),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.teal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 18,
                                color: Colors.white),
                            TextBold(
                                text: 'Time Schedule',
                                fontSize: 14,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                                text: 'Name of Subject',
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: 'Time Schedule',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextBold(
                                text: 'Mark Nalupa',
                                fontSize: 18,
                                color: Colors.black),
                            TextRegular(
                                text: 'Adviser',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextBold(
                                text: 'CpE - 3B',
                                fontSize: 18,
                                color: Colors.black),
                            TextRegular(
                                text: 'Section',
                                fontSize: 12,
                                color: Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ButtonWidget(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        text: 'Home'),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
