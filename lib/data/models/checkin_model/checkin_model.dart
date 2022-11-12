import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkin_model.freezed.dart';
part 'checkin_model.g.dart';

@freezed
class CheckInModel with _$CheckInModel {
  const factory CheckInModel({
    required String checkin,
    required String location,
    required String purpose,
    required String id,
    required String employeeId,
  }) = _CheckInModel;
  factory CheckInModel.fromJson(Map<String, Object?> json) =>
      _$CheckInModelFromJson(json);
}
