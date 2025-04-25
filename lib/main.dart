// main.dart
import 'package:flutter/cupertino.dart';
import 'bottomNav.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: MainScreenWithHeader(),
    );
  }
}

class MainScreenWithHeader extends StatelessWidget {
  const MainScreenWithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: const [
            CustomHeader(title: 'Instagram'), // Header always on top
            Expanded(child: BottomNav()),         // BottomNav below it
          ],
        ),
      ),
    );
  }
}
