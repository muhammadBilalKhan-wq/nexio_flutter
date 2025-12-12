import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_network/core/utils/either.dart';
import 'package:social_network/core/failures/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signInWithEmailAndPassword(String email, String password);
  Future<Either<Failure, User>> signUpWithEmailAndPassword(String email, String password);
  Future<Either<Failure, void>> signOut();
  Stream<User?> get authStateChanges;
}
