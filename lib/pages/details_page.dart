import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  String name;
  String username;
  String email;
  String phone;

  DetailsPage(
    this.name,
    this.username,
    this.email,
    this.phone,
  );

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Image.network(
                    'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png',
                    scale: 3,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
