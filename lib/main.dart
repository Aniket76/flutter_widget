import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
        textTheme: const TextTheme(
          //Body Medium
          bodyLarge: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(fontSize: 32, color: Colors.red, fontWeight: FontWeight.w700),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Widget Episode 0: Base Setup'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade200.withOpacity(0.2),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.amberAccent.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
              /*

              Text Widget Structure

              Important Text Widget Properties:
               - textAlign
               - textDirection
               - overflow
               - textScaleFactor/textScaler,
               - maxLines
               - selectionColor

              Other Widgets related to Text Widgets
               - TextTheme()
               - TextStyle()
               - Text.rich() Hello, Aniket
               - SelectableText()

              Todo: Pro Tip
              How to use Global Style like a PRO

              */

              // child: SelectableText(
              //   'Hello Decoders!!'
              // ),

              // child: Text.rich(
              //   TextSpan(
              //     text: 'Hello, ',
              //     style: TextStyle(
              //       fontSize: 32,
              //       color: Colors.green,
              //       fontWeight: FontWeight.normal
              //     ),
              //     children: [
              //       TextSpan(
              //         text: 'Aniket!! ',
              //         style: TextStyle(
              //           fontSize: 32,
              //           color: Colors.red,
              //           fontWeight: FontWeight.bold
              //         ),
              //       ),
              //       TextSpan(
              //         text: 'How are you?',
              //         style: TextStyle(
              //           fontSize: 32,
              //           color: Colors.black87
              //         ),
              //       )
              //     ]
              //   )
              // ),

              child: Text(
                'This is a text Widget',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: StyleManager.header.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StyleManager{
  static const TextStyle header = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black87
  );
}
