import 'package:flutter/material.dart';
import 'package:projects/utilities/constants.dart';
import 'package:projects/utilities/style.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(Constants.padding),
                child: Row(
                  children: [
                    Expanded(flex: 3, child: Image.asset(Constants.logoImg)),
                    Expanded(
                      flex: 12,
                      child: Padding(
                        padding: const EdgeInsets.only(left: Constants.padding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "avter",
                              style: TextStyling.titleStyle(),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
          separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(Constants.padding),
              child: Divider(
                thickness: 1.2,
                color: Constants.textColor,
              )),
          itemCount: 9),
    );
  }
}
