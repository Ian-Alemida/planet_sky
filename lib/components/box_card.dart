import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget content;
  const BoxCard({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.circular(11),
          boxShadow: kElevationToShadow[3],
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: content,
        ));
  }
}
