import 'package:cloud_firestore/cloud_firestore.dart';

Future addSubject(
  String year,
  String section,
  String adviser,
  String sub1,
  String sub2,
  String sub3,
  String sub4,
  String sub5,
  String sub6,
  String sub7,
  String sub8,
  String timeSub1,
  String timeSub2,
  String timeSub3,
  String timeSub4,
  String timeSub5,
  String timeSub6,
  String timeSub7,
  String timeSub8,
) async {
  final docUser = FirebaseFirestore.instance.collection('Subjects').doc();

  final json = {
    'year': year,
    'section': section,
    'adviser': adviser,
    'sub1': sub1,
    'sub2': sub2,
    'sub3': sub3,
    'sub4': sub4,
    'sub5': sub5,
    'sub6': sub6,
    'sub7': sub7,
    'sub8': sub8,
    'timeSub1': timeSub1,
    'timeSub2': timeSub2,
    'timeSub3': timeSub3,
    'timeSub4': timeSub4,
    'timeSub5': timeSub5,
    'timeSub6': timeSub6,
    'timeSub7': timeSub7,
    'timeSub8': timeSub8,
    'id': docUser.id,
  };
  await docUser.set(json);
}
