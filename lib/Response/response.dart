abstract class Response {
  T parse<T>(Map<String, Object?> msg);
}
