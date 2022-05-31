import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:endsmeet/config/app_config.dart';
import 'package:endsmeet/env.dart';
import 'package:endsmeet/helper/device_helper.dart';

import 'api_error.dart';

class ApiClient {
  Dio? _dio;
  Api? apiConfig = Env.value?.config?.api;

  ApiClient(Dio dio, DeviceHelper deviceHelper) {
    dio.interceptors.add(
        InterceptorsWrapper(onRequest: (RequestOptions options, hand) async {
        options.headers['Authorization'] = 'Bearer ${await 'access token'}';
        options.headers['DeviceId'] = await deviceHelper.getDeviceIdentifier();
        options.headers['lang'] = "_en";
        return hand.next(options);
      }, onError: (DioError error, hand) => error,)
    );
    _dio = dio;
  }

  String getFullPath(String endPath) {
    if(apiConfig != null) {
      return "${apiConfig!.baseUrl ?? ''}${endPath}";
    }
    return "";

  }

  Future<T> httpGet<T>(String path) async {
    Response? response;
    try {
      response =
          await _dio!.get(this.getFullPath(path));
      _checkResponseIsOk(response);
      print(response.data);
    } catch (e) {
      _handleRequestError(e);
    }
    return response!.data as T;
  }

  Future<T> httpPost<T>(String path, dynamic data) async {
    Response? response;
    try {
      response = await _dio!.post(
          this.getFullPath(path),
          data: json.encode(data),
          options: Options(
              headers: {'Content-Type': 'application/json; charset=utf-8'}));
      _checkResponseIsOk(response);
    } catch (e) {
      _handleRequestError(e);
    }
    return response!.data as T;
  }

  Future<T> httpPut<T>(String path, dynamic data) async {
    Response? response;
    try {
      response = await _dio!.put(
          this.getFullPath(path),
          data: json.encode(data),
          options: Options(
              headers: {'Content-Type': 'application/json; charset=utf-8'}));
      _checkResponseIsOk(response);
    } catch (e) {
      _handleRequestError(e);
    }
    return response!.data as T;
  }

  Future<T> httpDelete<T>(String path) async {
    Response? response;
    try {
      final response = await _dio!.delete(
          this.getFullPath(path),
          options: Options(
              headers: {'Content-Type': 'application/json; charset=utf-8'}));
      _checkResponseIsOk(response);
    } catch (e) {
      _handleRequestError(e);
    }
    return response!.data as T;
  }

  void _checkResponseIsOk(Response response) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) return;
    throw ApiError(response);
  }

  void _handleRequestError(error) {
    if (error is SocketException) {
      var errorCode = error.osError!.errorCode;
      if (errorCode == 61 ||
          errorCode == 60 ||
          errorCode == 111 ||
          // Network is unreachable
          errorCode == 101 ||
          errorCode == 104 ||
          errorCode == 51 ||
          errorCode == 8 ||
          errorCode == 113 ||
          errorCode == 7 ||
          errorCode == 64) {
        throw ApiConnectionRefusedError(error);
      }
    }

    throw error;
  }
}
