import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {this.Ikon, this.ikonColour, this.labelColour, required this.label});
  final IconData? Ikon;
  final String label;
  final Color? ikonColour;
  final Color? labelColour;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Ikon,
          size: 80.0,
          color: ikonColour,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: labelColour,
          ),
        )
      ],
    );
  }
}
