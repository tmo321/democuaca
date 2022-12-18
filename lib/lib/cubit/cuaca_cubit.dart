import 'package:bloc/bloc.dart';
import 'package:cuaca002/model/cuaca_model.dart';
import 'package:cuaca002/request/cuaca_request.dart';
import 'package:meta/meta.dart';

part 'cuaca_state.dart';

class CuacaCubit extends Cubit<CuacaState> {
  CuacaCubit() : super(CuacaInitial());

  CuacaRequest cuacaRequest = CuacaRequest();
  CuacaModel cuacaModel = CuacaModel();

  getDataWeather() async {
    cuacaModel = await cuacaRequest.getCurrentWeather();
    emit(CurrentWeather(cuacaModel));
  }
}
