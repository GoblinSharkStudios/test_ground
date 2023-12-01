import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';

void main() {
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pocetPiv = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Upper Lista
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 10, 22),
        ),

        // App body and background
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 7, 10, 22),
                Color.fromARGB(255, 1, 1, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          //Shadow of slider counter
          alignment: Alignment.center,

//Lottie.asset("assets/Beer.json")

          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 7, 10, 22),
                  spreadRadius: 4,
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
            ),
            //Body of Shadow of slider counter
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 13, 19, 43),
                    spreadRadius: 3,
                    blurRadius: 2,
                  ),
                  //darker body of a body
                  BoxShadow(
                    color: Color.fromARGB(255, 3, 5, 10),
                    spreadRadius: -4,
                    blurRadius: 15,
                  )
                ],
              ),

              // Counter itself
              child: StepperSwipe(
                stepperValue: 2,
                initialValue: 0,
                speedTransitionLimitCount: 3, //Trigger count for fast counting
                onChanged: (int value) => print('new value $value'),
                firstIncrementDuration: Duration(
                    milliseconds: 250), //Unit time before fast counting
                secondIncrementDuration: Duration(
                    milliseconds: 100), //Unit time during fast counting
                direction: Axis.horizontal,
                dragButtonColor: const Color.fromARGB(255, 3, 5, 10),
                iconsColor: Color.fromARGB(255, 255, 255, 255),
                counterTextColor: Color.fromARGB(255, 255, 255, 255),
                maxValue: 1000,
                minValue: 0,
                withBackground: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
