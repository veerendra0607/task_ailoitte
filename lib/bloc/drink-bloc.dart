import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:task_for_ailoitte/bloc/drink-event.dart';
import 'package:task_for_ailoitte/bloc/drink-state.dart';

import 'package:task_for_ailoitte/repository/repository.dart';
import 'package:task_for_ailoitte/serialization/userModel.dart';

class DrinkBloc extends Bloc<DrinkEvent, DrinkState> {
  DrinkBloc() : super(DrinkInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetDrinkList>((event, emit) async {
      try {
        emit(DrinkLoading());
        final mList = await _apiRepository.fetchDrinkList();
        emit(DrinkLoaded(mList));
        if (mList.error != null) {
          emit(DrinkError(mList.error));
        }
      } on NetworkError {
        emit(const DrinkError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
