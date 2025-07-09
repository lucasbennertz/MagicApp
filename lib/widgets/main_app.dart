import 'package:escola_magica/widgets/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final statuses = [
      Permission.storage
    ].request();
    return const MaterialApp(
        home: MainScreen());
  }
}
