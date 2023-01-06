import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg',
              name: 'Atardecer en playa',
            ),
            SizedBox(
              height: 25,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.vivelanaturaleza.com/wp-content/uploads/2020/05/paisajes-naturales.jpg',
              name: 'Lago Azul',
            ),
            SizedBox(
              height: 25,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.nationalgeographic.com.es/medio/2022/01/05/waterfall-and-baobab-tree_3887ddc0_2000x1333.jpg',
              name: 'Amanecer en montaña',
            ),
            SizedBox(
              height: 25,
            ),
            CustomCardType2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKlMUAkQoQ73iBAw2SoP7mklofwE-Za4VYAg&usqp=CAU',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
