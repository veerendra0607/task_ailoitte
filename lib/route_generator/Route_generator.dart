import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_for_ailoitte/bloc/drink-bloc.dart';
import 'package:task_for_ailoitte/UI/drinkDetailspage.dart';
import 'package:task_for_ailoitte/UI/drinkpage.dart';

class RouteGenerator {
  static final navigatorKey = new GlobalKey<NavigatorState>();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // print("RouteGenerator->name=${settings.name}");
    switch (settings.name) {
      case DrinkPage.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => DrinkPage(),
        );

      case DrinksDetailsPage.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (context) => DrinkBloc(),
            child: DrinksDetailsPage(
              selectedDrinkName: '',
            ),
          ),
        );

      default:
        return null!;
    }
  }
}
