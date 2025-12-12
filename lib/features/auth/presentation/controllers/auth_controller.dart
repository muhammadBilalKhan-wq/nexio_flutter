import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_network/core/utils/either.dart';
import 'package:social_network/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:social_network/features/auth/domain/usecases/signin_with_email_and_password.dart';
import 'package:social_network/features/auth/domain/usecases/signup_with_email_and_password.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<User?> build() {
    return null;
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    state = const AsyncValue.loading();
    final authRepository = ref.read(authRepositoryProvider);
    final signIn = SignInWithEmailAndPassword(authRepository);
    final result = await signIn(email, password);
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    state = const AsyncValue.loading();
    final authRepository = ref.read(authRepositoryProvider);
    final signUp = SignUpWithEmailAndPassword(authRepository);
    final result = await signUp(email, password);
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }
}
