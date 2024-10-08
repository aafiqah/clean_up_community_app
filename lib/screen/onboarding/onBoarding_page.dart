import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/index.dart';
import '../../custom widget/button/index.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CleanUpColor.primary,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
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
                    onTap: () {
                      context.goNamed("/home_page");
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
                    buttonRadius: SizeSpacing().doubleSpacing20,
                    boxShadow: const [
                      BoxShadow(
                        color: CleanUpColor.black,
                        blurRadius: 25,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  Submitbutton(
                    onTap: () {
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
                    buttonColor: CleanUpColor.primary,
                    buttonRadius: SizeSpacing().doubleSpacing20,
                    boxShadow: const [
                      BoxShadow(
                        color: CleanUpColor.black,
                        blurRadius: 25,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
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
