import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    Key? k,
}) : super(key: k);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    child: Text(
      text,
      style: TextStyle(fontSize: 24, color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      primary: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    onPressed: onClicked,
  );
}