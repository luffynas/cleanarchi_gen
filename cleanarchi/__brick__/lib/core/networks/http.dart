import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:{{name.snakeCase()}}/core/models/api_result.dart';
import 'package:{{name.snakeCase()}}/core/models/network_exceptions.dart';
import 'package:{{name.snakeCase()}}/core/storage/auth_storage.dart';
import 'package:{{name.snakeCase()}}/core/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const Duration _defaultConnectTimeout =
    Duration(milliseconds: Duration.millisecondsPerMinute);
const Duration _defaultReceiveTimeout =
    Duration(milliseconds: Duration.millisecondsPerMinute);

///
class XHttp {
  ///@TODO(luffynas): add documentation.
  XHttp({Interceptors? this.interceptors}) {
    // get api base url from .env file
    baseUrl = dotenv.env['PUBLIC_URL']!;

    // set options
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: _defaultConnectTimeout,
        receiveTimeout: _defaultReceiveTimeout,
      ),
    );

    // set request header
    _dio.options.headers['Accept'] = 'application/json';

    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }
    _dio.interceptors.addAll([
      _interceptor(),
    ]);
  }

  ///
  late final String baseUrl;

  ///
  late Dio _dio;

  ///
  late final List<Interceptor>? interceptors;

  ///@TODO(luffynas): add documentation.
  Future<ApiResult<T>> get<T>(
    String endPoint, {
    dynamic data,
    Map<String, dynamic>? params,
    bool authorization = false,
    T Function(Response<T>)? onSuccess,
  }) async {
    return sendRequest(
      () => _dio.get(
        endPoint,
        queryParameters: params,
      ),
      authorization: authorization,
      onSuccess: onSuccess,
    );
  }

  ///@TODO(luffynas): add documentation.
  Future<ApiResult<T>> post<T>(
    String endPoint, {
    Map<String, dynamic>? data,
    T Function(Response<T>)? onSuccess,
  }) async {
    return sendRequest<T>(
      () async => _dio.post(
        endPoint,
        data: data,
      ),
      authorization: true,
      onSuccess: onSuccess,
    );
  }

  ///@TODO(luffynas): add documentation.
  Future<ApiResult<T>> patch<T>(
    String endPoint, {
    dynamic data,
    T Function(Response<T>)? onSuccess,
  }) async {
    return sendRequest<T>(
      () async => _dio.patch(
        endPoint,
        data: data,
      ),
      authorization: true,
      onSuccess: onSuccess,
    );
  }

  ///@TODO(luffynas): add documentation.
  Future<ApiResult<T>> put<T>(
    String endPoint, {
    dynamic data,
    T Function(Response<T>)? onSuccess,
  }) async {
    return sendRequest<T>(
      () async => _dio.put(
        endPoint,
        data: data,
      ),
      authorization: true,
      onSuccess: onSuccess,
    );
  }

  ///@TODO(luffynas): add documentation.
  Future<ApiResult<T>> delete<T>(String endPoint) async {
    return sendRequest<T>(
      () async => _dio.delete(
        endPoint,
      ),
      authorization: true,
    );
  }

  ///@TODO(luffynas): add documentation.
  Future<ApiResult<T>> sendRequest<T>(
    Future<Response<T>> Function() httpRequest, {
    bool authorization = false,
    T Function(Response<T>)? onSuccess,
  }) async {
    if (authorization) await setAuthorization();

    try {
      final response = await httpRequest();
      return ApiResult.success(
        data: onSuccess!.call(response),
      );
    } catch (e) {
      log('#=====================');
      log('e: $e');
      log('=====================#');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  ///@TODO(luffynas): add documentation.
  Future<void> setAuthorization() async {
    final authStorage = AuthStorage();
    final token = await authStorage.getToken();
    if (token != null) {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      _dio.options.headers['device'] = Platform.isAndroid ? 'android' : 'ios';
    }
  }

  Interceptor _interceptor() {
    return InterceptorsWrapper(
      onResponse: (response, handler) {
        logger.i(
          'ResponseLog ${response.realUri} \n'
          '-- headers --\n'
          '${tryEncode(response.requestOptions.headers)} \n'
          '-- queryParameters --\n'
          '${tryEncode(response.requestOptions.queryParameters)} \n'
          '-- data --\n'
          '${tryEncode(response.requestOptions.data ?? '')} \n'
          '-- payload --\n'
          '${tryEncode(response.data)} \n',
        );

        return handler.next(response); // continue
      },
    );
  }

  ///@TODO(luffynas): add documentation.
  String tryEncode(dynamic data) {
    try {
      final jsonString = json.encode(data);
      // var object = json.decode(jsonString);
      // var prettyString = JsonEncoder.withIndent('  ').convert(object);
      return jsonString;
    } catch (e, _) {
      return '-';
    }
  }
}
