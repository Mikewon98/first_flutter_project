import 'package:flutter/material.dart';
import 'package:my_flutter/class/item_class.dart';
import 'package:my_flutter/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromRGBO(83, 126, 243, 0.1),
        title: const Text('Panel'),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('No Internet Connection'),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.red,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(title: 'Rocket', imagePath: 'images/rocket.png'),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Space', imagePath: 'images/space.png'),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Travel', imagePath: 'images/travel.png'),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                  title: 'Social power', imagePath: 'images/socials.png'),
            ),
          ],
          // child: Image.asset('/images/rocket.png'),
        ),
      ),
    );
  }
}
