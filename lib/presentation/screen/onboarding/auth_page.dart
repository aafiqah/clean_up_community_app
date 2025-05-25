import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Post-frame navigation
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            if (snapshot.hasData) {
              context.goNamed("/home_page");
            } else {
              context.goNamed("/onBoarding_page");
            }
          });

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
