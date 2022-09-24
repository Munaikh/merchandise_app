import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Item extends StatelessWidget {
  Item({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: Icon(
            FontAwesomeIcons.mugHot,
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(name),
          trailing: Text(price),
        ),
      ),
    );
  }
}
