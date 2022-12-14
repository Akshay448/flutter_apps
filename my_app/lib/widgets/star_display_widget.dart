import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({this.value = 1, Key? key})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          size: 20,
        );
      }),
    );
  }
}