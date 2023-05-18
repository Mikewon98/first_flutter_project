import 'package:flutter/material.dart';
import 'package:my_flutter/class/item_class.dart';
import 'package:my_flutter/core/constant.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.box.imagePath),
            const SizedBox(height: kdouble10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 20;
                      });
                    },
                    child: const Text('Small Text'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 30;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2, color: Colors.indigo),
                    ),
                    child: const Text('Medium Text'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 60;
                      });
                    },
                    child: const Text('Large Text'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 100;
                      });
                    },
                    child: const Text('Huge Text'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kdouble20,
            ),
            FittedBox(
              child: Text(
                widget.box.title,
                style: TextStyle(
                    fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: kdouble20,
            ),
            Padding(
              padding: const EdgeInsets.all(kdouble20),
              child: Text(
                longText,
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
