import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project_gen/data/repositores/user_repository_impl.dart';
import 'package:my_project_gen/presentation/screens/home/home_screen.dart';
import 'package:my_project_gen/presentation/screens/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (context) => HomeViewModel(
                userRepository: UserRepositoryImpl(),
              ),
              child: const HomeScreen(),
            ),
          ),
        );
      },
    );

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/image/marvel.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}