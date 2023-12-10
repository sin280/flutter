import 'package:test_f/Request/request.dart';

class SampleRequest implements Request {
  @override
  Map<String, Object?> json;

  SampleRequest({
    required this.json,
  });
}