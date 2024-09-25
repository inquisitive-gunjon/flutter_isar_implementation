import 'package:flutter/material.dart';
import 'package:flutter_isar_pagination/model/item.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [ItemSchema],
    directory: dir.path,
  );

  runApp(MyApp(isar: isar));
}

class MyApp extends StatelessWidget {
  final Isar isar;

  MyApp({required this.isar});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: HomePage(isar: isar),
    );
  }
}
