import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_f/Response/response.dart';
import 'package:test_f/Util/LogUtil.dart';

part 'sample_response.freezed.dart';
part 'sample_response.g.dart';

@freezed
class SampleResponse with _$SampleResponse implements Response {
  const SampleResponse._();
  const factory SampleResponse({
    required String header,
    required String body,
    required int age,
  }) = _SampleResponse;

  @override
  T parse<T>(Map<String, Object?> msg) {
    LogUtil.shared.outputLog('parse');
    final result = SampleResponse.fromJson(msg);
    return result as T;
  }

  factory SampleResponse.fromJson(Map<String, Object?> json) => _$SampleResponseFromJson(json);

  static SampleResponse getInstance() => const SampleResponse(
      header: '',
      body: '',
      age: 0,
  );
}