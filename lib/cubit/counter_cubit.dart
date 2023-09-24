
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(): super(InitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int teamAIncrement = 0;
  int teamBIncrement = 0;

  void teamIncrement({required String team, required int buttonNumber}){
    if(team == 'A'){
      teamAIncrement += buttonNumber;
      emit(CounterATeamIncrement());
    }else{
      teamBIncrement += buttonNumber;
      emit(CounterBTeamIncrement());
    }
  }
  void teamClear(){
    teamAIncrement = 0;
    teamBIncrement = 0;
    emit(CounterBTeamIncrement());
  }
}

