import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/daftar_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      title: 'Kantin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const DaftarMenuPage(),
    );
  }
}
