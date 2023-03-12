// import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:projects/utilities/constants.dart';
// import 'package:projects/utilities/routes/routes.dart';
import 'package:projects/utilities/style.dart';
import 'package:projects/view/widgets/card_comment.dart';
import 'package:projects/view/widgets/category_title.dart';

class DetailsDesign extends StatelessWidget {
  // final Map movie;, required this.movie
  const DetailsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
              width: double.infinity,
              height: 360,
              child: Stack(
                children: [
                  Image.asset(
                    Constants.slide2Img,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    // decoration: ,
                    width: double.infinity,
                    height: double.infinity,
                    // color: Constants.primaryColor.withOpacity(0.8),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Constants.primaryColor.withOpacity(0.3),
                              Constants.primaryColor.withOpacity(1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0.2, 0.8])),
                  ),
                  Positioned(
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.navbarRoute);
                              },
                              icon: const Icon(Icons.arrow_back_ios_new)),
                          // const Spacer(),
                          const SizedBox(width: 285),

                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_add_outlined)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Avengers",
                                    style: TextStyling.titleStyle()),
                                const SizedBox(height: 10),
                                Text("1 hour 39 minuites",
                                    style: TextStyling.details2Style()),
                                const SizedBox(height: 5),
                                Text("Action - Super Hero",
                                    style: TextStyling.details2Style()),
                                const SizedBox(height: 5),
                                Text("⭐ 8.9/10 from IMDB",
                                    style: TextStyling.details2Style()),
                                const SizedBox(height: 5),
                                Text("👍 98% from user",
                                    style: TextStyling.details2Style()),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Constants.secondColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    onPressed: () {},
                                    child: Text(
                                      "Watch Now",
                                      style: TextStyling.btnTextStyle(),
                                    )),
                              ]),
                          const SizedBox(width: 85),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              Constants.slide2Img,
                              width: 150,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const CategoryTitle(type: "Sinopsis", exist: false),
                Text(
                    "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi incidunt aperiam sapiente consequuntur odio, saepe accusamus? Possimus eveniet sunt magni? Quisquam vero aut maiores, molestiae soluta recusandae, odio neque architecto nisi impedit commodi inventore iure! Deserunt ",
                    style: TextStyling.paraStyle()),
                const SizedBox(height: 7),
                const CategoryTitle(type: "Trailer", exist: false),
                const SizedBox(height: 7),
                SizedBox(
                  height: 130,
                  child: Stack(
                    children: [
                      Image.asset(
                        Constants.slide2Img,
                        width: double.infinity,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        // decoration: ,
                        width: double.infinity,
                        height: double.infinity,
                        // color: Constants.primaryColor.withOpacity(0.8),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Constants.primaryColor.withOpacity(0.3),
                                  Constants.primaryColor.withOpacity(0.8),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: const [0.2, 0.8])),
                      ),
                      Positioned(
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.navbarRoute);
                              },
                              icon: const Icon(Icons.run_circle)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                const CategoryTitle(type: "Comments", exist: false),
                Container(
                  color: Constants.primaryLightLightColor,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 320,
                          child: ListView.separated(
                              itemBuilder: (context, index) =>
                                  const CardComment(),
                              separatorBuilder: (context, index) =>
                                  const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Divider(
                                      color: Constants.textColor,
                                      thickness: 1.2,
                                    ),
                                  ),
                              itemCount: 3)),
                      Text(
                        "Aee All>",
                        style: TextStyling.details1Style(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const CategoryTitle(type: "More Like This"),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
