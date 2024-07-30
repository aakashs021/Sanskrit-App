// import 'dart:convert';
// import 'dart:io';

// import 'package:path_provider/path_provider.dart';

// Future<File> writedata(List<String> data) async {
//   List<dynamic> newa = [];

//   String a = await readNotes();
//   print("---------------read $a");
//   Map ak = jsonDecode(a);
//   print(ak);

//   if (ak['List'] != null) {
//     print('con');
//     newa = ak['List'] ;
//   }
//   print("--------1 $newa");

//   newa.addAll(data);
//   print('-----------2$newa');
//   Map<String, List<dynamic>> newmap = {"List": newa};

//   var b = jsonEncode(newmap);
//   print(b);

//   final Directory directory = await getApplicationDocumentsDirectory();
//   final File file = File("${directory.path}/my_file.txt");
//   return file.writeAsString(
//     b,
//   );
// }

// Future<String> readNotes() async {
//   try {
//     final directory = await getApplicationDocumentsDirectory();
//     final file = File('${directory.path}/my_file.txt');
//     String notes = await file.readAsString();
//     return notes;
//   } catch (e) {
//     return '';
//   }
// }
