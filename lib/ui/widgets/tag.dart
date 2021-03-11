import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;

  Tag({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Text(text.toUpperCase(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            )));
  }
}
