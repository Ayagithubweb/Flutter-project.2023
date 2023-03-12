import 'package:flutter/material.dart';
import 'package:projects/utilities/style.dart';

class CategoryTitle extends StatelessWidget {
  final String type;
  final bool exist;
  const CategoryTitle({super.key, required this.type, this.exist = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(type, style: TextStyling.titleStyle()),
            exist
                ? Text("See All >", style: TextStyling.seeAllStyle())
                : const Text(""),
          ],
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
