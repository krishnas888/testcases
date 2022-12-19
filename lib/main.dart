import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_testing/widget/theams.dart';

import 'Screen/home.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode:ThemeMode.system ,
      theme:MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      home: const MyHomePage(),
      initialRoute: "/home",
      routes: {
        "/home":(context)=>const MyHomePage(),
       // "/detail":(context)=>ItemDetailPage(),
      },
    );
  }
}

