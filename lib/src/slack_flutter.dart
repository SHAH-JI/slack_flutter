import 'package:dio/dio.dart';

/// A [class] to interact with Slack API.
class SlackFlutter {
  /// A [Default Constructor] to initialize the [SlackFlutter] class.
  SlackFlutter({required String authToken}) {
    _dio.options.headers['Authorization'] = 'Bearer $authToken';
    _dio.options.baseUrl = 'https://slack.com/api';
  }

  /// A [final] instance of Dio.
  final Dio _dio = Dio();
}
