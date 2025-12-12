import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/features/auth/presentation/controllers/auth_controller.dart';
import 'package:social_network/features/auth/presentation/widgets/auth_field.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 16),
            AuthField(controller: passwordController, hintText: 'Password', obscureText: true),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ref.read(authControllerProvider.notifier).signUpWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    );
              },
              child: const Text('Sign Up'),
            ),
            TextButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
