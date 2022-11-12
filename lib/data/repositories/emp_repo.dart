// ignore_for_file: unnecessary_lambdas
import 'package:dio/dio.dart';
import 'package:vizmo_assesment/data/models/emp_data_model/emp_data_model.dart';
import 'package:vizmo_assesment/data/repositories/api.dart';
import 'package:vizmo_assesment/data/services/service.dart';

class EmpRepo {
  Service service = Service();
  static const limit = 10;

  EmpRepo(this.service);

  Future<List<EmpDataModel>> getEmpData(int page) async {
    try {
      Response response = await service.sendRequest.get(
        '${ApiConstants.empEndPoint}?page=$page&limit=$limit',
      );
      List<dynamic> result = response.data;
      return result.map((e) => EmpDataModel.fromJson(e)).toList();
    } on Exception {
      rethrow;
    }
  }
}
