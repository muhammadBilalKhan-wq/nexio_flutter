import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_network/features/auth/presentation/screens/login_screen.dart';
import 'package:social_network/features/auth/presentation/screens/signup_screen.dart';

part 'router.g.dart';

@riverpod
GoRouter router(ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );
}
