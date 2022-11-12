import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vizmo_assesment/data/repositories/api.dart';

class Service {
  final Dio _dio = Dio();

  Service() {
    _dio.options.baseUrl = ApiConstants.baseurl;
    _dio.interceptors.add(PrettyDioLogger());
  }

  Dio get sendRequest => _dio;
}
