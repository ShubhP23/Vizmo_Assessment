import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizmo_assesment/controllers/cubit/checkin_data_cubit/checkin_data_state.dart';
import 'package:vizmo_assesment/data/models/checkin_model/checkin_model.dart';
import 'package:vizmo_assesment/data/repositories/checkin_repo.dart';

class CheckInDataCubit extends Cubit<CheckInDataState> {
  CheckInDataCubit() : super(CheckInDataLoading()) {
    getCheckInData();
  }

  CheckInRepo checkInRepo = CheckInRepo();

  void getCheckInData() async {
    try {
      List<CheckInModel> data = await checkInRepo.getCheckInData();
      emit(CheckInDataLoaded(data));
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        emit(
          CheckInDataError('Could not fetch Checkin Data'),
        );
      }
      emit(CheckInDataError(e.message.toString()));
    }
  }
}
