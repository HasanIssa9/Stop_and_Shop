// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:stop_and_shop/Screens/FirstScreen/first_screen.dart';
// import 'package:stop_and_shop/style/colors.dart';
// import 'package:page_transition/page_transition.dart';
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//               Stack(
//                 children: [
//                     Container(
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                       color: greenColor,
//                       borderRadius:
//                           BorderRadius.only(bottomRight: Radius.circular(700))),
//                     ),
//               Container(
//               width: double.infinity,
//               height: double.infinity,

//               decoration: BoxDecoration(
//                   color: Color.fromRGBO(54, 155, 43, 100),
//                   borderRadius:
//                       BorderRadius.only(bottomRight: Radius.circular(700))),
//             )
//                 ],
//               )
//       ]
//       );
//       }
      
// }


// AnimatedSplashScreen(
//       splash:  Container(
//                     width: 300,
//                     child: Image.asset(
//                       'assets/images/img_logo.png',
//                     ),
//         duration: 400,
//         splashTransition:SplashTransition.slideTransition ,
//         pageTransitionType:PageTransitionType.topToBottom ,
//       backgroundColor:Color.fromRGBO(144, 229, 142, 100),
//       nextScreen: FirstScreen(),
//       );