import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Option1', 'Option2', 'Option3', 'Option4'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
        ),
        body: ListView(
          children: options
              .map((option) => ListTile(
                    title: Text(option),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ))
              .toList(),
        ));
  }
}
