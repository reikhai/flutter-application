import 'package:flutter/cupertino.dart';

class StorySlider extends StatelessWidget {
  const StorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10), // 👈 左右内边距

              child: Row(
                children: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12), // 👈 每个图标右边间距
                    child: StoryIcon(index: index),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryIcon extends StatefulWidget {
  final int index;
  const StoryIcon({super.key, required this.index});

  @override
  CreateStoryIcon createState() => CreateStoryIcon();
}

class CreateStoryIcon extends State<StoryIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [
                Color(0xFF9B2282), // pink-purple
                Color(0xFFEEA863), // orange-yellow
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: CupertinoColors.systemBackground,
            ),
            child: ClipOval(
              child: Image.network(
                'https://i.pravatar.cc/100?img=${widget.index}',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'User ${widget.index}',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: CupertinoColors.label,
          ),
        ),
      ],
    );
  }
}
