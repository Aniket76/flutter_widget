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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DFW Ep #2: Scaffold'),
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

  ///
  /// What is Scaffold?
  ///
  /// Important Properties
  ///  - backgroundColor
  ///  - appBar
  ///  - body
  ///  - primary
  ///  - extendBodyBehindAppBar
  ///  - extendBody
  ///
  /// Other Related Widgets
  ///  - AppBar
  ///  - PopupMenuButton
  ///  - PreferredSize
  ///
  /// AppBar Properties
  ///  - title
  ///  - backgroundColor
  ///  - leading
  ///  - actions
  ///  - centerTitle
  ///
  /// PopupMenuButton Properties
  ///  - onSelected
  ///  - position
  ///  - itemBuilder
  ///  - icon
  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            debugPrint('Back Button is Pressed');
          },
        ),
        // bottom: const PreferredSize(
        //   preferredSize: Size.fromHeight(12.0),
        //   child: Padding(
        //     padding: EdgeInsets.only(bottom: 8.0),
        //     child: Text('Scaffold is Awesome'),
        //   ),
        // ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: handleClick,
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) {
              return {'Cart', 'Logout', 'Settings'}.map((String choice){
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
              }).toList();
            },
          ),
        ],
      ),
      body: Text('This is BODY'),
    );
    // return Scaffold(
    //   backgroundColor: Colors.amber.shade50,
    //   appBar: AppBar(
    //     title: Text(
    //       widget.title,
    //       style: const TextStyle(
    //         fontWeight: FontWeight.bold,
    //         color: Colors.black87,
    //       ),
    //       textAlign: TextAlign.center,
    //     ),
    //     leading: IconButton(
    //       icon: const Icon(Icons.arrow_back_rounded),
    //       onPressed: () {},
    //     ),
    //     actions: <Widget>[
    //       // IconButton(
    //       //   icon: const Icon(Icons.more_vert),
    //       //   tooltip: 'Open shopping cart',
    //       //   onPressed: () {},
    //       // ),
    //       PopupMenuButton<String>(
    //         onSelected: handleClick,
    //         position: PopupMenuPosition.under,
    //         itemBuilder: (BuildContext context) {
    //           return {'Logout', 'Settings'}.map((String choice) {
    //             return PopupMenuItem<String>(
    //               value: choice,
    //               child: Text(choice),
    //             );
    //           }).toList();
    //         },
    //       ),
    //     ],
    //     bottom: const PreferredSize(
    //       preferredSize: Size.fromHeight(12.0),
    //       child: Padding(
    //         padding: EdgeInsets.only(bottom: 8.0),
    //         child: Text('Scaffold is Awesome'),
    //       ),
    //     ),
    //     backgroundColor: Colors.amberAccent.shade700,
    //   ),
    //   extendBody: true,
    //   // body: const Text('Scaffold is Awesome'),
    // );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
}
