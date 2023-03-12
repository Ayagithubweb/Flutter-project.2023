import 'package:flutter/material.dart';
import 'package:projects/utilities/style.dart';

class CardComment extends StatelessWidget {
  const CardComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.person),
                  Text(
                    "Alexandra",
                    style: TextStyling.details1Style(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.lock_outline_rounded),
                  Icon(Icons.label_important),
                ],
              ),
            ],
          ),
          const SizedBox(height: 7),
          Text(
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi incidunt aperiam sapiente consequuntur odio, saepe accusamus? Possimus eveniet sunt magni. ",
              style: TextStyling.paraCommentStyle()),
        ],
      ),
    );
  }
}
