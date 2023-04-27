import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class DrinkEvent extends Equatable {
  const DrinkEvent();

  @override
  List<Object> get props => [];
}

class GetDrinkList extends DrinkEvent {}
