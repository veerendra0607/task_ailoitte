import 'package:equatable/equatable.dart';
import 'package:task_for_ailoitte/serialization/userModel.dart';

abstract class DrinkState extends Equatable {
  const DrinkState();

  @override
  List<Object?> get props => [];
}

class DrinkInitial extends DrinkState {}

class DrinkLoading extends DrinkState {}

class DrinkLoaded extends DrinkState {
  final UserModel drinkModel;
  const DrinkLoaded(this.drinkModel);
}

class DrinkError extends DrinkState {
  final String? message;
  const DrinkError(this.message);
}
