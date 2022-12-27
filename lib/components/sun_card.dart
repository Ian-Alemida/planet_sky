import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sunCard extends StatelessWidget {
  const sunCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: 360,
            height: 600,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 0.9],
                colors: [
                  Color.fromRGBO(220, 220, 70, 0.8),
                  Color.fromRGBO(110, 110, 20, 0.8)
                ],
              ),
              borderRadius: BorderRadius.circular(29),
            ),
            width: 360,
            height: 520,
            child: Padding(
              padding: const EdgeInsets.only(top: 230.0, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The sun',
                    style: TextStyle(fontSize: 29),
                  ),
                  Text(
                    'Overview. Our Sun is a 4.5 billion-year-old star – a hot glowing ball of hydrogen and helium at the center of our solar system. The Sun is about 93 million miles (150 million kilometers) from Earth, and without its energy, life as we know it could not exist here on our home planet. The Sun is composed by of hydrogen and helium held together by its own gravity.',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sunScreen");
                      },
                      child: Text(
                        'Show more...',
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 3,
            child: Image(
              width: 350,
              height: 350,
              image: AssetImage("assets/images/planets/the_sun.png"),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
