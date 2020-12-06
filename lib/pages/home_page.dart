import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contatos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                        'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png'),
                    title: Text('Three-line ListTile $index'),
                    subtitle: Text(
                        'A sufficiently long subtitle warrants three lines.'),
                    isThreeLine: true,
                  ),
                );
              }),
        ));
  }
}
