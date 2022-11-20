import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qr_school_management/screens/home_page.dart';
import 'package:qr_school_management/widgets/button_widget.dart';
import 'package:qr_school_management/widgets/text_bold.dart';
import 'package:qr_school_management/widgets/text_regular.dart';
import 'package:get_storage/get_storage.dart';

class ResultPage extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final Stream<DocumentSnapshot> userData = FirebaseFirestore.instance
        .collection('Subjects')
        .doc(box.read('result'))
        .snapshots();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: StreamBuilder<Object>(
              stream: userData,
              builder: (context, snapshot) {
                dynamic data = snapshot.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextBold(
                        text: data['year'] + ' year',
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
                                text: data['sub1'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub1'],
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
                                text: data['sub2'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub2'],
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
                                text: data['sub3'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub3'],
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
                                text: data['sub4'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub4'],
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
                                text: data['sub5'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub5'],
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
                                text: data['sub6'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub6'],
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
                                text: data['sub7'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub7'],
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
                                text: data['sub8'],
                                fontSize: 14,
                                color: Colors.black),
                            TextRegular(
                                text: data['timeSub8'],
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
                                text: data['adviser'],
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
                                text: data['section'],
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
