import 'package:assignment2/data/global_data.dart';
import 'package:flutter/material.dart';
//MyHomePage import:
import './screens/splash_screen.dart';

import './screens/categories_screen.dart';
void main() => runApp(const MainApp());


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //when the app starts we will be are able to see the spash screen:
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home:  const SplashScreen(),
      routes: {
        CategoriesScreen.routeName: (_) => CategoriesScreen()
      },
    );
  }
}
