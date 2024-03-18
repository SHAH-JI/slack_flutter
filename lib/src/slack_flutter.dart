import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// A [class] to interact with Slack API.
class SlackFlutter {
  /// A [Default Constructor] to initialize the [SlackFlutter] class.
  SlackFlutter({required String authToken}) {
    _dio.interceptors.add(
      PrettyDioLogger(
        responseBody: false,
        request: false,
      ),
    );
    _dio.options.headers['Authorization'] = 'Bearer $authToken';
  }

  /// A [final] instance of Dio.
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://slack.com/api/',
    ),
  );

  /// [Function] that search slack user by email.
  Future<Response<dynamic>> fetchUserByEmail({required String email}) async {
    return _dio.get('users.lookupByEmail', queryParameters: {'email': email});
  }
}
