// ignore: one_member_abstracts
abstract class UseCase<T, P> {
  Future<T> callFuture(P param);
  Stream<T> callStream(P param);
}
