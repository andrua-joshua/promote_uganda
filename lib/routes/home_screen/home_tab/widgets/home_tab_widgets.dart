import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';

//ignore:camel_case_types
class scrollableNavWidget extends StatelessWidget {
  const scrollableNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: const EdgeInsets.all(4),
                    child: const Row(
                      children: [
                        Icon(Icons.add_circle, color: Colors.red,),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Additional Services",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))),
          TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouteGenerator.shophomescreen),
              child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: const EdgeInsets.all(4),
                    child: const Row(
                      children: [
                        Icon(Icons.shop, color: Colors.red,),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Promote Shop",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))),
          TextButton(
              onPressed: () => Navigator.pushNamed(context, RouteGenerator.promotetvscreen),
              child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: const EdgeInsets.all(4),
                    child: const Row(
                      children: [
                        Icon(Icons.tv, color: Colors.red,),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Promote TV",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))),
        ],
      ),
    );
  }
}

//ignore:camel_case_types
class shortStoriesWidget extends StatelessWidget {
  final String storyTitle;
  const shortStoriesWidget({super.key, required this.storyTitle});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            4,
            (index) => const shortStoryUnitWidget(
                imgUrl: "assets/images/city.jpg",
                storyCat: "development",
                title: "COMPONENT TITLE")),
      ),
    );
  }
}

//ignore:camel_case_types
class shortStoryUnitWidget extends StatelessWidget {
  final String imgUrl;
  final String storyCat;
  final String title;
  const shortStoryUnitWidget(
      {required this.imgUrl,
      required this.storyCat,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgUrl))),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                    )),
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  "Latest",
                  style: TextStyle(fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          SizedBox(
              child: Column(children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.trending_up,
                    color: Colors.orange,
                  ),
                  Text(
                    storyCat,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.orange,
                        ),
                      )),
                ],
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            )
          ]))
        ],
      ),
    );
  }
}

//ignore:camel_case_types
class showAllWidget extends StatelessWidget {
  final String title;
  const showAllWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            TextButton(onPressed: () => Navigator.pushNamed(context, RouteGenerator.promotetvscreen), child: const Text("View all"))
          ],
        ));
  }
}
