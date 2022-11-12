import 'package:vizmo_assesment/data/models/checkin_model/checkin_model.dart';
import 'package:vizmo_assesment/utils/barrels.dart';

@immutable
abstract class CheckInDataState {}

class CheckInDataLoading extends CheckInDataState {}

class CheckInDataLoaded extends CheckInDataState {
  final List<CheckInModel> data;

  CheckInDataLoaded(this.data);
}

class CheckInDataError extends CheckInDataState {
  final String error;

  CheckInDataError(this.error);
}
