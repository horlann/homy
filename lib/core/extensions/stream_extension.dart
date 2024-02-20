import 'dart:async';

extension StreamControllerX<T> on StreamController<T> {
  void addSafe(T event) {
    if (!isClosed) {
      add(event);
    }
  }
}
