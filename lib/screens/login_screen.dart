import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_docs_clone/colors.dart';
import 'package:google_docs_clone/repository/auth_repository.dart';
import 'package:riverpod/riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(WidgetRef ref){
    ref.read(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () => signInWithGoogle(ref),
            icon: Image.asset('assets/images/g-logo-2.png',height: 20,),
            label: const Text('Sign in with Google',
              style:  TextStyle(
                color: kBlackColor,
              ),),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(150, 150),
          backgroundColor: kWhiteColor,
        ),),
      ),
    );
  }
}
