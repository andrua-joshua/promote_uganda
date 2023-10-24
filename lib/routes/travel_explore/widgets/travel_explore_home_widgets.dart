import 'package:flutter/material.dart';

//ignore:camel_case_types
class topHeadWidget extends StatelessWidget {
  const topHeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Choose & Discover",
          style: TextStyle(
              color: Color.fromARGB(255, 37, 33, 243),
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Uganda, located in East Africe , is a diverse"
          " and cultuarally rich country often refered go as "
          "\"Pearl of Africa\". It is known for its stunning natural beauty, including the "
          "majestic Rwenzori Mountains, the source of the Nile River, and numerous other national "
          "parks teaming with diverse wildlife, such as gorillas, lions, and elephants.",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, wordSpacing: 5),
        ),
      ],
    );
  }
}

//ignore:camel_case_types
class unitCatWidget extends StatelessWidget {
  final String title;
  final String briefinfo;
  final String imgUrl;
  const unitCatWidget(
      {super.key,
      required this.title,
      required this.briefinfo,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(height: 160),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1)),
      padding: const EdgeInsets.all(10),
      child: LayoutBuilder(builder: (context, dimension) {
        return Row(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                width: dimension.maxWidth*0.4
              ),
              decoration: const BoxDecoration(
                color: Colors.grey
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(child:SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 98, 39, 176),
                      fontWeight: FontWeight.bold
                    ),),
                  Text(briefinfo, style: const TextStyle(wordSpacing: 3),)
                ],
              ),
            ))
          ],
        );
      }),
    );
  }
}
