import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:projects/utilities/constants.dart';
import 'package:projects/utilities/style.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        const Expanded(flex: 1, child: SizedBox(height: 30)),
        Expanded(
          flex: 1,
          child: TextField(
            cursorColor: Constants.textColor,
            style: TextStyling.paraStyle(),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Constants.textColor,
              ),
              hintText: "Search",
              hintStyle: TextStyling.paraStyle(),
              enabledBorder: const OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.padding)),
                borderSide: BorderSide(
                    width: 3, color: Constants.textColor), //<-- SEE HERE
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.padding)),
                borderSide: BorderSide(
                    width: 3, color: Constants.textColor), //<-- SEE HERE
              ),
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: ConditionalBuilder(
              condition: true,
              builder: (context) =>
                  Text("Exist", style: TextStyling.paraStyle()),
              fallback: (context) =>
                  Text("Not Exist", style: TextStyling.paraStyle()),
            ),
          ),
        ),
      ]),
    ));
  }
}
/*TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              // disabledBorder: ,
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: Constants.textColor,
              label: const Text("Search"),
              hintText: "Search",
              labelStyle: TextStyling.paraStyle(),
              hintStyle: TextStyling.paraStyle(),
            ),
          ),*/