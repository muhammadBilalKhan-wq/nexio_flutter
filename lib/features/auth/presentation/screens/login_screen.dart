import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network/features/auth/presentation/controllers/auth_controller.dart';
import 'package:social_network/features/auth/presentation/widgets/auth_field.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
                ref.read(authControllerProvider.notifier).signInWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    );
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to sign up screen
              },
              child: const Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
