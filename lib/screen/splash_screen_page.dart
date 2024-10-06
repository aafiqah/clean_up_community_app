import 'package:flutter/material.dart';

import '../constant/index.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CleanUpColor.primary,
      body: Center(
        child: Image(
          image: const AssetImage(CleanUpImages.logoCleanUp),
          width: size.width * 0.8,
          height: size.height * 0.6,
        ),
      ),
    );
  }
}
