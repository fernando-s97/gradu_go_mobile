extension Let<T> on T {
  R let<R>(R Function(T) func) {
    return func(this);
  }
}
