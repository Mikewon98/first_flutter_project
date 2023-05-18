import 'package:flutter/material.dart';
import 'package:my_flutter/core/constant.dart';
import 'package:my_flutter/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 70,
          ),
          SizedBox(
            height: kdouble20,
          ),
          ListTile(
            leading: Icon(Icons.person_2_rounded),
            title: Text('Michael Wondwossen'),
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text('mikewon98@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Ethiopia'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
