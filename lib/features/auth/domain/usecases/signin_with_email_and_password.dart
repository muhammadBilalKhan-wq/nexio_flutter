import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_network/core/failures/failure.dart';
import 'package:social_network/core/utils/either.dart';
import 'package:social_network/features/auth/domain/repositories/auth_repository.dart';

class SignInWithEmailAndPassword {
  final AuthRepository repository;

  SignInWithEmailAndPassword(this.repository);

  Future<Either<Failure, User>> call(String email, String password) {
    return repository.signInWithEmailAndPassword(email, password);
  }
}
