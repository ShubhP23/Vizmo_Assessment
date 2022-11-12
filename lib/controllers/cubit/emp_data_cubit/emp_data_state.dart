// ignore_for_file: lines_longer_than_80_chars

part of 'emp_data_cubit.dart';

@immutable
abstract class EmpDataState {}

//This is the initial state where we show nothing
class DataInitial extends EmpDataState {}

//DataLoaded state is where we show when data is loaded
class DataLoaded extends EmpDataState {
  final List<EmpDataModel> data;

  DataLoaded(this.data);
}

//DataLoading state is being used to store the already fetched data, after pagination occurs.
class DataLoading extends EmpDataState {
  final List<EmpDataModel> oldData;
  final bool isFirstFetched;

  DataLoading(this.oldData, {this.isFirstFetched = false});
}

//DataError will display if any erroe occurs
class DataError extends EmpDataState {
  final String error;
  DataError(this.error);
}
