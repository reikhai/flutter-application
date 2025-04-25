import 'package:flutter/cupertino.dart';
import 'package:application/home_page/story_slider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StorySlider(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}