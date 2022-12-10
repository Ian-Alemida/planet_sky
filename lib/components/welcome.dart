import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 13, left: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Welcome back \n Ian Almeida',
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          Container(
            color: Colors.transparent,
            width: 65,
            height: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage("assets/images/profile.jfif"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
