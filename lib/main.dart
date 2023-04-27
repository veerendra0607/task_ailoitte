import 'package:flutter/material.dart';
import 'package:task_for_ailoitte/route_generator/Route_generator.dart';
import 'package:task_for_ailoitte/UI/drinkpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrinkPage(),
      initialRoute: DrinkPage.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: RouteGenerator.navigatorKey,
    );
  }
}
