import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class ImplicitePage extends StatefulWidget {
  const ImplicitePage({Key? key}) : super(key: key);

  @override
  State<ImplicitePage> createState() => _ImplicitePageState();
}

class _ImplicitePageState extends State<ImplicitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicite Animation"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            // Up to Down  //

            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 540),
              duration: Duration(milliseconds: 2000), // val
              child: Image.asset("assets/image/Maars.jpeg", width: 220), // widget
              builder: (context, double val, widget) {
                return Transform.translate(
                  offset: Offset(0, val),
                  child: widget,
                );
              },
            ),



            // zoom in zoom out //

            // TweenAnimationBuilder(
            //     tween: Tween<double>(begin: 1, end: 2),
            //     duration: Duration(milliseconds: 2000), // val
            //     child: Image.asset("assets/image/Maars.jpeg", width: 220), // widget
            //     builder: (context, double val, widget) {
            //       return Transform.scale(
            //         scale: val,
            //         child: widget,
            //       );
            //       },
            // ),




            // bhaman kare goool fare //

            // TweenAnimationBuilder(
            //     tween: Tween<double>(begin: 0, end: 2 * pi),
            //     duration: Duration(milliseconds: 2000),
            //     child: Image.asset("assets/image/Maars.jpeg", width: 220),
            //     builder: (context, double val, widget) {
            //       return Transform.rotate(
            //         angle: val,
            //         child: widget,
            //       );
            //       },
            // ),
          ],
        ),
      ),
    );
  }
}
