import 'package:flutter/material.dart';
import 'package:qr_school_management/utils/colors.dart';
import 'package:qr_school_management/widgets/app_bar.dart';
import 'package:qr_school_management/widgets/text_bold.dart';
import 'package:get_storage/get_storage.dart';
import '../widgets/text_regular.dart';

class SectionPage extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('List of Sections'),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBold(
                text: '${box.read('year')} year',
                fontSize: 32,
                color: Colors.black),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<Object>(
                stream: null,
                builder: (context, snapshot) {
                  return Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: ListTile(
                                tileColor: secondaryColor,
                                title: TextBold(
                                    text: 'BSCPE - 3B',
                                    fontSize: 18,
                                    color: Colors.black),
                                subtitle: TextRegular(
                                    text: 'Advisier: Lance Olana',
                                    fontSize: 14,
                                    color: Colors.white),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.qr_code_sharp,
                                    color: Colors.black,
                                    size: 32,
                                  ),
                                ),
                              ),
                            );
                          })),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
