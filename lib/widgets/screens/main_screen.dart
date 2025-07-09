import 'package:escola_magica/widgets/screens/home_screen.dart';
import 'package:escola_magica/widgets/screens/photo_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        HomeScreen(),
        PhotoScreen()
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
