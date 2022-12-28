import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sunScreen extends StatelessWidget {
  const sunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/dark_space.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 33.0, bottom: 0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("The Sun",
                      style: TextStyle(
                        fontSize: 49,
                        color: Colors.white,
                      )),
                  Image(
                    image: AssetImage("assets/images/planets/the_sun.png"),
                  ),
                ],
              ),
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Icon(Icons.device_thermostat),
                    Text("5.000.000 C°"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
