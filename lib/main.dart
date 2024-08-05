import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
        // textTheme: const TextTheme(
        //   //Body Medium
        //   bodyLarge: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.w700),
        //   bodyMedium: TextStyle(fontSize: 32, color: Colors.red, fontWeight: FontWeight.w700),
        // ),
      ),
      home: const MyHomePage(title: 'DFW Ep #1: Text Widget'),
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
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.amberAccent.shade700,
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
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

        child: Text.rich(
          TextSpan(
            text: 'Text Widget is',
            style: StyleManager.header,
            children: [
              TextSpan(
                text: ' Awesome ',
                style: TextStyle(
                  fontSize: 54,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: '😎',
                style: TextStyle(
                    fontStyle: FontStyle.normal
                )
              )
            ]
          )
        ),

        // child: Text(
        //   'This is Boring Text Widget',
        //   style: TextStyle(
        //     fontSize: 24,
        //     color: Colors.grey
        //   ),
        // ),
      ),
    );
  }
}

class StyleManager{
  static TextStyle header = GoogleFonts.montserrat(
    fontSize: 44,
    fontWeight: FontWeight.w900,
    color: Colors.black87,
    fontStyle: FontStyle.italic,
  );
}
