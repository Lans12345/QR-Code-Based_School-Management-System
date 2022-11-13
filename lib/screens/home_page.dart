import 'package:flutter/material.dart';
import 'package:qr_school_management/utils/colors.dart';
import 'package:qr_school_management/widgets/home_container.dart';
import 'package:qr_school_management/widgets/text_bold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.qr_code,
                                color: textColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: textColor,
                              ),
                            ),
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
                    text: 'by year level', fontSize: 18, color: Colors.black45),
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
                      onPressed: () {}),
                  const SizedBox(
                    width: 20,
                  ),
                  HomeContainer(
                      label: '2nd year',
                      icon: Icons.looks_two_rounded,
                      onPressed: () {}),
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
                      onPressed: () {}),
                  const SizedBox(
                    width: 20,
                  ),
                  HomeContainer(
                      label: '4th year',
                      icon: Icons.looks_4_rounded,
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
