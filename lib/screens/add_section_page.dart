import 'package:flutter/material.dart';
import 'package:qr_school_management/widgets/app_bar.dart';
import 'package:qr_school_management/widgets/text_bold.dart';
import 'package:qr_school_management/widgets/text_regular.dart';
import 'package:get_storage/get_storage.dart';

class AddSectionPage extends StatefulWidget {
  @override
  State<AddSectionPage> createState() => _AddSectionPageState();
}

class _AddSectionPageState extends State<AddSectionPage> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarWidget('Adding Section'),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextRegular(
                    text: 'Year level', fontSize: 18, color: Colors.black),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                    child: TextBold(
                        text: '${box.read('year')} year level',
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  color: Colors.white,
                  height: 50,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                TextRegular(
                    text: 'Name of Section', fontSize: 18, color: Colors.black),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  style: const TextStyle(
                      color: Colors.black, fontFamily: 'Quicksand'),
                  // onChanged: (_userName) {
                  //   userName = _userName;
                  // },
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextRegular(
                    text: 'Name of Adviser', fontSize: 18, color: Colors.black),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  style: const TextStyle(
                      color: Colors.black, fontFamily: 'Quicksand'),
                  // onChanged: (_userName) {
                  //   userName = _userName;
                  // },
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
