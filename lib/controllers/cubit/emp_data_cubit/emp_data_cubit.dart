import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:vizmo_assesment/data/models/emp_data_model/emp_data_model.dart';
import 'package:vizmo_assesment/data/repositories/emp_repo.dart';

part 'emp_data_state.dart';

class EmpDataCubit extends Cubit<EmpDataState> {
  EmpDataCubit(this.empRepo) : super(DataInitial());

  int page = 1;

  //We create an instance of the repo
  final EmpRepo empRepo;

  void loadData() {
    if (state is DataLoading) {
      return;
    }
    final currentState = state;

    var oldData = <EmpDataModel>[];
    if (currentState is DataLoaded) {
      oldData = currentState.data;
    }
    emit(DataLoading(oldData, isFirstFetched: page == 1));

    empRepo.getEmpData(page).then((newData) {
      page++;
      final data = (state as DataLoading).oldData;
      data.addAll(newData);

      emit(DataLoaded(data));
    });
  }
}
