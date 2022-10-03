import 'package:http/http.dart' as http;

class HttpClientWithDynamicCustomHeaders extends http.BaseClient {
  HttpClientWithDynamicCustomHeaders(this.getHeaders);

  final Future<Map<String, String>> Function() getHeaders;

  final http.Client _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final customHeaders = await getHeaders();
    request.headers.addAll(customHeaders);
    return _client.send(request);
  }
}
