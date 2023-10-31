import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/widgets/shopping_start_screen_widget.dart';

//ignore:camel_case_types
class shoppingHomeScreenV2 extends StatelessWidget {
  const shoppingHomeScreenV2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text(
            "Shopping",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),

        SliverList(
          delegate: SliverChildListDelegate(
            const [
              SizedBox(height: 10,),
              //topNavWidget(),
              SizedBox(height: 15,),
              itemsWidget()

          ]))
      ],
    );
  }
}
