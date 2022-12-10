import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class initialScreen extends StatelessWidget {
  const initialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/earth_initial.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30.0, left: 23, right: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 60),
              ),
              Text(
                'Solar System',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 60),
              ),
              IconButton(
                  onPressed: () {
                    print('Me apertaram');
                    Navigator.of(context).pushReplacementNamed("/home");
                  },
                  icon: Icon(
                    Icons.arrow_right_alt_outlined,
                    size: 45,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
