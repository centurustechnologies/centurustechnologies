// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

WEbDEsign2(BuildContext context, year) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 200,
        ),
        Container(
          height: 390,
          width: 390,
          child: Image.asset(
            'assets/tab_img1.png',
            fit: BoxFit.fill,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            // image: new DecorationImage(
            //   image: new AssetImage("assets/tab_img1.png"),
            //   fit: BoxFit.fill,
            // ),
          ),
        ),
        const SizedBox(
          width: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'We are working with ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 32,
                shadows: [
                  Shadow(
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '$year+ years exprience',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 32,
                shadows: [
                  Shadow(
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Continually network effective bandwidth whereas goal-oriented schemas.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 222, 215, 215),
                fontSize: 16,
                shadows: [
                  Shadow(
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Intrinsicly incentivize corporate synergy with accurate task bricks-and-clicks',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 222, 215, 215),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'leadership skills.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 222, 215, 215),
                fontSize: 16,
                shadows: [
                  Shadow(
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.check,
                  color: Color.fromARGB(255, 6, 89, 157),
                  size: 25.0,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Digital Confrence',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 222, 215, 215),
                    fontSize: 15,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.check,
                  color: Color.fromARGB(255, 6, 89, 157),
                  size: 25.0,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Great Speak',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 222, 215, 215),
                    fontSize: 15,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.check,
                  color: Color.fromARGB(255, 6, 89, 157),
                  size: 25.0,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Event Management',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 222, 215, 215),
                    fontSize: 15,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}

WEbDEsign2MobileMethod(BuildContext context, year) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage("assets/tab_img1.png"),
                  fit: BoxFit.fill,
                ))),
        const SizedBox(
          height: 25,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'We are working with $year+ years exprience',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 18,
                shadows: [
                  Shadow(
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 10, 0),
              child: SizedBox(
                width: width,
                child: const Text(
                  'Continually network effective bandwidth whereas goal -oriented schemas.Intrinsicly incentivize corporate synergy with accurate task bricks-and-clicks leadership skills.',
                  style: TextStyle(
                    height: 1.2,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 249, 247, 247),
                    fontSize: 15,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const SizedBox(
              height: 7,
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 6, 89, 157),
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Digital Confrence',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 222, 215, 215),
                        fontSize: 14,
                        shadows: [
                          Shadow(
                            blurRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 6, 89, 157),
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Great Speak',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 222, 215, 215),
                        fontSize: 14,
                        shadows: [
                          Shadow(
                            blurRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 6, 89, 157),
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Event Management',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 222, 215, 215),
                        fontSize: 14,
                        shadows: [
                          Shadow(
                            blurRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
