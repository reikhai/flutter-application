// header.dart
import 'package:flutter/cupertino.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  const CustomHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: CupertinoColors.systemBackground,
      child: Row(
        children: [
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: CupertinoColors.label
            ),
          ),
          const Spacer(),
          Icon(
            CupertinoIcons.heart,
            color: CupertinoColors.label,
            size: 24,
          ),
          const SizedBox(width: 10),
          Icon(
            CupertinoIcons.bolt_circle,
            color: CupertinoColors.label,
            size: 24,
          ),
        ],
      ),
    );
  }
}
