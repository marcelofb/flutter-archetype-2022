import 'package:flutter/material.dart';

import 'package:archetype_2022/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            SizedBox(height: 20),
            CustomCardType2(
                name: 'Un hermoso paisaje',
                imageUrl:
                    'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
            SizedBox(height: 100),
          ],
        ));
  }
}
