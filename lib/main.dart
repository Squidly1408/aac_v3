import 'package:flutter/material.dart';

import 'screens/app_based_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String colour = 'cyan';
    Color mainColour = const Color(0xffdbb301);

    if (colour == 'yellow') {
      mainColour = const Color(0xffdbb301);
    } else {
      if (colour == 'blue') {
        mainColour = const Color(0xff5dbdfc);
      } else {
        if (colour == 'green') {
          mainColour = const Color(0xff14e352);
        } else {
          if (colour == 'cyan') {
            mainColour = const Color(0xff02bdbd);
          } else {
            if (colour == 'purple') {
              mainColour = const Color(0xffb950f2);
            } else {
              if (colour == 'pink') {
                mainColour = const Color(0xfff76a95);
              } else {
                if (colour == 'red') {
                  mainColour = const Color(0xfff21818);
                } else {
                  if (colour == 'orange') {
                    mainColour = const Color(0xffffa41c);
                  }
                }
              }
            }
          }
        }
      }
    }
    ;
    Color subColour = const Color(0x94000000);

    return MaterialApp(
      title: 'AAC_V3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppBasedDisplay(mainColour: mainColour, subColour: subColour),
    );
  }
}
