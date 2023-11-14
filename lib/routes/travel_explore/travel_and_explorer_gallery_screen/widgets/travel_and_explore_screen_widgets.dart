import 'package:flutter/material.dart';

//ignore:camel_case_types
class gallerTopWidget extends StatelessWidget {
  const gallerTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Gallery",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 5,
        ),
        LayoutBuilder(builder: (context, size) {
          double width = size.maxWidth;

          return Divider(
            thickness: 1,
            endIndent: 0.8 * width,
          );
        })
      ],
    );
  }
}

//ignore:camel_case_types
class gallerImagesWidget extends StatelessWidget {
  final double extend;
  final double height;
  final int itemsCount;
  const gallerImagesWidget(
      {super.key,
      required this.extend,
      required this.height,
      required this.itemsCount});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      double width = size.maxWidth;
      int count = (width / (extend + 5)).floor();

      int index = 0;

      List<Widget> rows = [];

       while (index < itemsCount) {
      //while(false){
        List<String> imgs = [];
        int sub = itemsCount - (index + 1);
        if (sub < count) {
          for (int i = 0; i < (sub); i++) {
            imgs.add("assets/images/gameparks.jpg");
            index++;
          }
        } else {
          for (int i = 0; i < count; i++) {
            imgs.add("assets/images/gameparks.jpg");
            index++;
          }
        }

        // rows.add(simpleGalleryRowWidget(
        //     count: count, height: height, width: extend, imgsUrl: imgs));
      }

      return Column(
        children: rows,
      );
    });
  }
}

//ignore:camel_case_types
class simpleGalleryRowWidget extends StatelessWidget {
  final int count;
  final double height;
  final double width;
  final List<String> imgsUrl;
  const simpleGalleryRowWidget(
      {super.key,
      required this.count,
      required this.height,
      required this.width,
      required this.imgsUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                count,
                (index) => Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(imgsUrl[index]))),
                    ))));
  }
}
