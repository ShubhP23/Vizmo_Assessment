// ignore_for_file: unnecessary_lambdas

import 'package:dio/dio.dart';
import 'package:vizmo_assesment/data/models/checkin_model/checkin_model.dart';
import 'package:vizmo_assesment/data/repositories/api.dart';
import 'package:vizmo_assesment/data/services/service.dart';

class CheckInRepo {
  Service service = Service();

  Future<List<CheckInModel>> getCheckInData() async {
    try {
      Response response =
          await service.sendRequest.get(ApiConstants.checkinEndPoint);
      List<dynamic> result = response.data;
      return result.map((e) => CheckInModel.fromJson(e)).toList();
    } on Exception {
      rethrow;
    }
  }
}
