import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterTeamAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}){
    if ( team == "A"){
      teamAPoints += buttonNumber;
      emit(CounterTeamAIncrementState());
    }else{
      teamBPoints += buttonNumber;
      emit(CounterTeamBIncrementState());
    }
  }

}