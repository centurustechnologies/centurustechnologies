import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

WEbDEsign2(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
        ),
        Container(
            height: 390,
            width: 390,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: new DecorationImage(
                  image: new AssetImage("assets/tab_img1.png"),
                  fit: BoxFit.fill,
                ))),
        SizedBox(
          width: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
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
            SizedBox(
              height: 8,
            ),
            Text(
              '5+ years exprience',
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
            SizedBox(
              height: 15,
            ),
            Text(
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
            SizedBox(
              height: 7,
            ),
            Text(
              'Intrinsicly incentivize corporate synergy with accurate task bricks-and-clicks',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 222, 215, 215),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
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
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
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
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
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
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
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

WEbDEsign2MobileMethod(BuildContext context) {
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
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: new DecorationImage(
                  image: new AssetImage("assets/tab_img1.png"),
                  fit: BoxFit.fill,
                ))),
        SizedBox(
        height: 25,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Text(
              'We are working with 5+ years exprience',
              style: TextStyle(
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
            SizedBox(
              height: 8,
            ),
           
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16,0, 10, 0),
              child: SizedBox(
                width: width,
                child: Text(
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
            SizedBox(
              height: 7,
            ),
           
            SizedBox(
              height: 7,
            ),
            
            SizedBox(
              height: 15,
            ),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(width: 15,),
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
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(width: 15,),
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
            SizedBox(
              height: 6,
            ),
            Row(
              
              children: [SizedBox(width: 15,),
               
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
           
           
           ]
           ,)
          ],
        )
      ],
    ),
  );
}
 