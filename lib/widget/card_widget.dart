import 'package:flutter/material.dart';
import 'package:my_flutter/class/item_class.dart';
import 'package:my_flutter/core/notifiers.dart';
import 'package:my_flutter/pages/description_page.dart';

import '../core/constant.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(box: box);
            },
          ),
        );
      },
      child: ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDark, child) {
          return Card(
            color: isDark ? Colors.blue : Colors.orange,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: kdouble10),
                  Image.asset(box.imagePath),
                  Text(
                    box.title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text('This is a description of ${box.title}'),
                  const SizedBox(height: kdouble10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
