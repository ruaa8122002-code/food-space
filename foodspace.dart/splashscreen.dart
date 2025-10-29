import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app11/foodspace.dart/loginscreen.dart';
import 'package:app11/foodspace.dart/privacypolicy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class splashScr extends StatelessWidget {
  const splashScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0000FF),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 600),
          child: AnimatedSplashScreen(
            backgroundColor: Color(0xff0000FF),
            duration: 4000,
            splash: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Container(
                  child: Image(
                    image: AssetImage('images/logo.png'),
                    height: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 110,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'FoodSpace',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'For Everyone',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  child: Image(
                image: AssetImage('images/imag1.png'),
                height: 290,
                fit: BoxFit.fitHeight,
              )),
            ]),
            nextScreen: privacyScr1(),
            splashTransition: SplashTransition.fadeTransition,
          ),
        ));
  }
}
  // Padding(
  //           padding: const EdgeInsets.all(65),
  //           child: Column(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 220),
  //                 child: Container(
  //                   child:
  //                       Image(
  //                     image: AssetImage('images/logo.png'),
  //                     height: 40,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 110,
  //               ),
  //               Container(
  //                 child: Column(
  //                   children: [
  //                     Text(
  //                       'FoodSpace',
  //                       style: TextStyle(
  //                           fontSize: 40,
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white),
  //                     ),
  //                     SizedBox(
  //                       height: 10,
  //                     ),
  //                     Text(
  //                       'For Everyone',
  //                       style: TextStyle(
  //                           fontSize: 40,
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 50,
  //               ),
  //               Container(
  //                   child: Image(
  //                 image: AssetImage('images/imag1.png'),
  //                 height: 290,
  //                 fit: BoxFit.fitHeight,
  //               )),
  //               Container(
  //                 width: double.infinity,
  //                 height: 50,
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(30),
  //                     color: Colors.white.withOpacity(0.4)),
  //                 child: MaterialButton(
  //                   onPressed: () {
  //                     Navigator.of(context).push(
  //                       MaterialPageRoute(
  //                         builder: (context) => privacyScr1(),
  //                       ),
  //                     );
  //                   },
  //                   child: Text(
  //                     "Start",
  //                     style: TextStyle(
  //                         letterSpacing: 5,
  //                         fontSize: 40,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.white.withOpacity(0.8)),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
