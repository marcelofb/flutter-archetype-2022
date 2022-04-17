import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Option1', 'Option2', 'Option3', 'Option4'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview lazy (builder, separated)'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              final option = options[i];
              print(option);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
