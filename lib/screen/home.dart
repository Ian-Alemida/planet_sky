import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:planet_sky/components/box_card.dart';
import 'package:planet_sky/components/card_planet.dart';
import 'package:planet_sky/components/sun_card.dart';
import 'package:planet_sky/components/welcome.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dark_space.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            welcome(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [sunCard()],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardPlanet(
                    name: "Mercury",
                    description:
                        "Mercury is the smallest planet in our solar system. It's a little bigger than Earth's Moon.",
                    photo: "assets/images/planets/mercury.png",
                    color1: Color.fromRGBO(70, 70, 70, 0.8),
                    color2: Color.fromRGBO(128, 128, 128, 0.8),
                    screen: "/mercuryScreen",
                  ),
                  cardPlanet(
                    name: "Venus",
                    description:
                        "Venus is the second planet from the Sun, and is Earth's closest neighbor in the solar system.",
                    photo: "assets/images/planets/venus.png",
                    color1: Color.fromRGBO(230, 200, 0, 0.8),
                    color2: Color.fromRGBO(230, 140, 0, 0.8),
                    screen: "/venusScreen",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardPlanet(
                    name: "Earth",
                    description:
                        "Our home planet, Earth, is a rocky, terrestrial planet. It is the third planet in the solar system.",
                    photo: "assets/images/planets/earth.png",
                    color1: Color.fromRGBO(50, 80, 150, 0.8),
                    color2: Color.fromRGBO(40, 100, 40, 0.8),
                    screen: "/earthScreen",
                  ),
                  cardPlanet(
                    name: "Mars",
                    description:
                        "​Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere.",
                    photo: "assets/images/planets/mars.png",
                    color1: Color.fromRGBO(200, 50, 50, 0.8),
                    color2: Color.fromRGBO(215, 110, 0, 0.8),
                    screen: "/marsScreen",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardPlanet(
                    name: "Jupiter",
                    description:
                        "Jupiter is covered in swirling cloud stripes. It is the fifth planet in the solar system.",
                    photo: "assets/images/planets/jupiter.png",
                    color2: Color.fromRGBO(140, 140, 140, 0.8),
                    color1: Color.fromRGBO(204, 124, 51, 0.8),
                    screen: "/jupiterScreen",
                  ),
                  cardPlanet(
                    name: "Saturn",
                    description:
                        " Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium.",
                    photo: "assets/images/planets/saturn.png",
                    color2: Color.fromRGBO(200, 200, 200, 0.8),
                    color1: Color.fromRGBO(194, 135, 51, 0.8),
                    screen: "/saturnScreen",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardPlanet(
                    name: "Uranus",
                    description:
                        "Uranus is made of water, methane, and ammonia fluids above a small rocky center.",
                    photo: "assets/images/planets/uranus.png",
                    color1: Color.fromRGBO(0, 150, 120, 0.8),
                    color2: Color.fromRGBO(154, 250, 154, 0.8),
                    screen: "/uranusScreen",
                  ),
                  cardPlanet(
                    name: "Neptune",
                    description:
                        "Neptune made of a thick soup of water, ammonia, and methane over an Earth-sized solid center.",
                    photo: "assets/images/planets/neptune.png",
                    color1: Color.fromRGBO(0, 150, 255, 0.8),
                    color2: Color.fromRGBO(0, 220, 255, 0.8),
                    screen: "/neptuneScreen",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
