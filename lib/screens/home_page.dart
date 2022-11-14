import 'package:flutter/material.dart';
import 'package:qr_school_management/screens/add_section_page.dart';
import 'package:qr_school_management/screens/sections_page.dart';
import 'package:qr_school_management/utils/colors.dart';
import 'package:qr_school_management/widgets/home_container.dart';
import 'package:qr_school_management/widgets/text_bold.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.qr_code_scanner_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              PopupMenuButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.white),
                                  iconSize: 28,
                                  itemBuilder: (context) => [
                                        PopupMenuItem(
                                          onTap: () {
                                            box.write('year', '1st');
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                          },
                                          child: const Text("1st year"),
                                          value: 1,
                                        ),
                                        PopupMenuItem(
                                          onTap: () async {
                                            box.write('year', '2nd');
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                          },
                                          child: const Text("2nd year"),
                                          value: 2,
                                        ),
                                        PopupMenuItem(
                                          onTap: () async {
                                            box.write('year', '3rd');
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                          },
                                          child: const Text("3rd year"),
                                          value: 3,
                                        ),
                                        PopupMenuItem(
                                          onTap: () async {
                                            box.write('year', '4th');
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Hotline()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AddSectionPage()));
                                          },
                                          child: const Text("4th year"),
                                          value: 4,
                                        ),
                                      ]),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 150,
                        ),
                        TextBold(
                            text: 'SCANNED', fontSize: 32, color: Colors.white),
                      ],
                    ),
                  ),
                  height: 270,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextBold(
                      text: 'Sorted', fontSize: 24, color: Colors.black45),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextBold(
                      text: 'by year level',
                      fontSize: 18,
                      color: Colors.black45),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeContainer(
                        label: '1st year',
                        icon: Icons.looks_one_rounded,
                        onPressed: () {
                          box.write('year', '1st');

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SectionPage()));
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    HomeContainer(
                        label: '2nd year',
                        icon: Icons.looks_two_rounded,
                        onPressed: () {
                          box.write('year', '2nd');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SectionPage()));
                        }),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeContainer(
                        label: '3rd year',
                        icon: Icons.looks_3_rounded,
                        onPressed: () {
                          box.write('year', '3rd');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SectionPage()));
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    HomeContainer(
                        label: '4th year',
                        icon: Icons.looks_4_rounded,
                        onPressed: () {
                          box.write('year', '4th');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SectionPage()));
                        }),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
