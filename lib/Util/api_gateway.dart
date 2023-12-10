import 'package:test_f/Request/request.dart';
import 'package:test_f/Response/response.dart';

class ApiGateway {
  static final shared = ApiGateway._();

  ApiGateway._();

  Future<T> sendRequest<T extends Response>(Request request, Response response) async {
    return response.parse(request.json);
  }
}