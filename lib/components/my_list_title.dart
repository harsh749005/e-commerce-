import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const MyListTitle({
    super.key, 
    required this.text, 
    required this.icon,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: 
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Icon(
          icon, 
          color: Colors.grey
          ),
      ), 
        title: Text(text),
        onTap: onTap,
        );
  }
}
