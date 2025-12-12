sealed class Either<L, R> {
  const Either();
}

class Left<L, R> extends Either<L, R> {
  final L value;

  const Left(this.value);
}

class Right<L, R> extends Either<L, R> {
  final R value;

  const Right(this.value);
}


extension EitherX<L, R> on Either<L, R> {
  T fold<T>(T Function(L l) ifLeft, T Function(R r) ifRight) {
    if (this is Left<L, R>) {
      return ifLeft((this as Left<L, R>).value);
    } else if (this is Right<L, R>) {
      return ifRight((this as Right<L, R>).value);
    } else {
      throw Exception('Not all cases handled');
    }
  }
}
