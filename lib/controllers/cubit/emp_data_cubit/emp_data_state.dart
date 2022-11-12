part of 'emp_data_cubit.dart';

@immutable
abstract class EmpDataState {}

class DataInitial extends EmpDataState {}

class DataLoaded extends EmpDataState {
  final List<EmpDataModel> data;

  DataLoaded(this.data);
}

class DataLoading extends EmpDataState {
  final List<EmpDataModel> oldData;
  final bool isFirstFetched;

  DataLoading(this.oldData, {this.isFirstFetched = false});
}

class DataError extends EmpDataState {
  final String error;
  DataError(this.error);
}
