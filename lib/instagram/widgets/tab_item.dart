import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    required this.active,
    required this.icon,
    super.key,
  });

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: active == true ? Colors.black : Colors.grey,
                        width: 2))),
            child: Icon(
              icon,
              color: active == true ? Colors.black : Colors.grey,
            )));
  }
}