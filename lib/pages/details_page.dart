import 'package:AgendaAS/controllers/home_controller.dart';
import 'package:AgendaAS/models/todo_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String name;
  String username;
  String email;
  String address;
  String phone;

  DetailsPage(
    this.name,
    this.username,
    this.email,
    this.address,
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
      ),
    );
  }
}
