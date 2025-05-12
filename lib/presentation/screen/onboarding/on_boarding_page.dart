import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/index.dart';
import '../../index.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, onBoardingState) {
        return Scaffold(
          backgroundColor: CleanUpColor.primary,
          body: SizedBox(
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    key: const ValueKey('home_page'),
                    onTap: () {
                      context.goNamed("/home_page");
                    },
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: CleanUpColor.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.inter().fontFamily,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  const Image(
                    width: 200,
                    image: AssetImage(CleanUpImages.logoCleanUp),
                  ),
                  Column(
                    children: [
                      Text(
                        onBoardingState.switchSignUp ? 'Create an Account' : 'Welcome Back!',
                        style: TextStyle(
                          color: CleanUpColor.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          fontFamily: GoogleFonts.inter().fontFamily,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: SizeSpacing().doubleSpacing10),
                      Text(
                        onBoardingState.switchSignUp
                            ? 'Please fill this detail to create an account'
                            : 'Use Credentials to access your account',
                        style: TextStyle(
                          color: CleanUpColor.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          fontFamily: GoogleFonts.inter().fontFamily,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing10),
                  Column(
                    children: [
                      Form(
                        key: _formKey,
                        autovalidateMode: _autoValidateMode,
                        child: Column(
                          children: [
                            FormFieldWidget(
                              key: const ValueKey('email_field'),
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              padding: const EdgeInsets.only(bottom: 15),
                              title: 'Email',
                              titleStyleTitle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.white,
                              ),
                              hintText: 'me@gmail.com',
                              hintStyle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.greyMedium,
                              ),
                              errorStyle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.redLight,
                              ),
                              validator: ValidatorUtils.validateEmail,
                              color: CleanUpColor.searchBarColor,
                            ),
                            FormFieldWidget(
                              key: const ValueKey('password_field'),
                              controller: pwdController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: !onBoardingState.isPasswordVisible,
                              padding: const EdgeInsets.only(bottom: 15),
                              title: 'Password',
                              titleStyleTitle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.white,
                              ),
                              hintText: 'Enter your password',
                              hintStyle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.greyMedium,
                              ),
                              errorStyle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.redLight,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () =>
                                    context.read<OnboardingCubit>().togglePasswordVisible(),
                                child: Icon(
                                  onBoardingState.isPasswordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: CleanUpColor.primary,
                                  size: 18,
                                ),
                              ),
                              validator: ValidatorUtils.validatePassword,
                              color: CleanUpColor.searchBarColor,
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: onBoardingState.switchSignUp ? false : true,
                        child: GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: CleanUpColor.greyLight,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeSpacing().doubleSpacing20),
                      Submitbutton(
                        key: const ValueKey('logIn_OnBoarding'),
                        onPressed: () {
                          final form = _formKey.currentState;

                          if (form != null && form.validate()) {
                            form.save();
                            context.goNamed("/home_page");
                          }
                        },
                        width: size.width,
                        widget: Text(
                          onBoardingState.switchSignUp ? 'Signup' : 'Login',
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
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: CleanUpColor.greyMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: CleanUpColor.greyLight,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            fontFamily: GoogleFonts.inter().fontFamily,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: CleanUpColor.greyMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: SizeSpacing().doubleSpacing20,
                    children: [
                      SquareButton(
                        onTap: () {},
                        widget: const Image(
                          width: 100,
                          height: 100,
                          image: AssetImage(CleanUpImages.google),
                        ),
                      ),
                      SquareButton(
                        onTap: () {},
                        widget: const Image(
                          width: 100,
                          height: 100,
                          image: AssetImage(CleanUpImages.appleIOS),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        onBoardingState.switchSignUp ? 'Already have an account' : 'Not a member?',
                        style: TextStyleShared.textStyle.bodyMedium.copyWith(
                          color: CleanUpColor.white,
                        ),
                      ),
                      SizedBox(width: SizeSpacing().doubleSpacing10),
                      InkWell(
                        key: onBoardingState.switchSignUp
                            ? const ValueKey('switch_Register')
                            : const ValueKey('switch_Has_Account'),
                        onTap: () => context.read<OnboardingCubit>().toggleSwitchSignUp(),
                        child: Text(
                          onBoardingState.switchSignUp ? 'Login' : 'Register Now',
                          style: TextStyleShared.textStyle.bodyMedium.copyWith(
                            color: CleanUpColor.greenLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
