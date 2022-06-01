import 'package:advanced_course/presentation/resources/routes_manager.dart';
import 'package:advanced_course/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key); //default constructor

   MyApp._internal(); //named constructor

  static final MyApp _instance =  MyApp._internal(); //singleton or single instance

  factory MyApp() => _instance; //factory constructor

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getAppTheme(),
    );
  }
}
