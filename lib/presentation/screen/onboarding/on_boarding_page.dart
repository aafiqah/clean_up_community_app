import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constant/index.dart';
import '../../global_widgets/button/index.dart';
import '../../global_widgets/index.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CleanUpColor.primary,
      body: SizedBox(
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(CleanUpImages.onBoarding1),
                ),
              ],
            ),
            const Image(
              image: AssetImage(CleanUpImages.logoCleanUp),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Volunteer events to make your community a better place',
                style: TextStyle(
                  color: CleanUpColor.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 20,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: SizeSpacing().doubleSpacing20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Submitbutton(
                    key: const ValueKey('homePage'),
                    onPressed: () {
                      context.goNamed("/home_page");
                      // context.goNamed("/location_permission_page");
                    },
                    width: size.width,
                    widget: Text(
                      'Find an Event',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CleanUpColor.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      ),
                    ),
                    buttonColor: CleanUpColor.white,
                    borderRadius: SizeSpacing().doubleSpacing20,
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  Submitbutton(
                    key: const ValueKey('logInOnBoarding'),
                    onPressed: () {
                      context.goNamed("/login_page");
                    },
                    width: size.width,
                    widget: Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CleanUpColor.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      ),
                    ),
                    buttonColor: CleanUpColor.buttonColor,
                    borderRadius: SizeSpacing().doubleSpacing20,
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeSpacing().doubleSpacing30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage(CleanUpImages.onBoarding2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
