import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:planet_sky/components/box_card.dart';

class cardPlanet extends StatelessWidget {
  final String name;
  final String description;
  final String photo;
  final String screen;
  final Color color1;
  final Color color2;

  cardPlanet({
    required String this.name,
    required String this.description,
    required String this.photo,
    required Color this.color1,
    required Color this.color2,
    required String this.screen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          width: 180,
          height: 270,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 0.9],
              colors: [color1, color2],
            ),
            borderRadius: BorderRadius.circular(29),
          ),
          width: 180,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.only(top: 90.0, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 29),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(screen);
                    },
                    child: Text(
                      'Show more...',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 147,
          right: 63,
          child: Image(
            width: 120,
            height: 130,
            image: AssetImage(photo),
          ),
        ),
      ],
    );
  }
}
