import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
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
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('Subjects')
                    .where('year', isEqualTo: box.read('year'))
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                    return const Center(child: Text('Error'));
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    print('waiting');
                    return const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Center(
                          child: CircularProgressIndicator(
                        color: Colors.black,
                      )),
                    );
                  }

                  final data = snapshot.requireData;
                  return Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                          itemCount: snapshot.data?.size ?? 0,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: ListTile(
                                tileColor: secondaryColor,
                                title: TextBold(
                                    text: data.docs[index]['section'],
                                    fontSize: 18,
                                    color: Colors.black),
                                subtitle: TextRegular(
                                    text:
                                        'Advisier: ${data.docs[index]['adviser']}',
                                    fontSize: 14,
                                    color: Colors.black),
                                trailing: IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: SizedBox(
                                              height: 300,
                                              child: Center(
                                                child: QrImage(
                                                    data: data.docs[index]
                                                        ['id']),
                                              ),
                                            ),
                                          );
                                        });
                                  },
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
