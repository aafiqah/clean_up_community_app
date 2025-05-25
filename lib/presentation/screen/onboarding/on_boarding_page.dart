import 'package:firebase_auth/firebase_auth.dart';
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
  final TextEditingController confirmPwdController = TextEditingController();
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    emailController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  void _showErrorDialog(String message) {
    if (!mounted) return;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Authentication Failed'),
        content: Text(message),
      ),
    );
  }

  Future<void> handleAuth({required bool isSignUp}) async {
    showDialog(
      context: context,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final auth = FirebaseAuth.instance;
      if (isSignUp) {
        await auth.createUserWithEmailAndPassword(
          email: emailController.text,
          password: pwdController.text,
        );
      } else {
        await auth.signInWithEmailAndPassword(
          email: emailController.text,
          password: pwdController.text,
        );
      }

      if (!mounted) return;
      Navigator.pop(context);
      context.goNamed("/home_page");
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;
      Navigator.pop(context);
      _showErrorDialog(_firebaseErrorMessage(e.code));
    }
  }

  String _firebaseErrorMessage(String code) {
    switch (code) {
      case 'user-not-found':
        return 'Incorrect Email. Please try again.';
      case 'wrong-password':
        return 'Incorrect Password. Please try again.';
      case 'email-already-in-use':
        return 'This email is already in use.';
      case 'invalid-email':
        return 'The email address is invalid.';
      case 'weak-password':
        return 'The password is too weak.';
      default:
        return 'Something went wrong. Please check your credentials.';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, onBoardingState) {
        return Scaffold(
          backgroundColor: CleanUpColor.primary,
          body: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: SizeSpacing().doubleSpacing20),
                    const Image(
                      width: 200,
                      image: AssetImage(CleanUpImages.logoCleanUp),
                    ),
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
                        fontSize: 14,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: SizeSpacing().doubleSpacing10),
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
                              onTap: () => context.read<OnboardingCubit>().togglePasswordVisible(),
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
                          ),
                          if (onBoardingState.switchSignUp)
                            FormFieldWidget(
                              key: const ValueKey('confirm_password_field'),
                              controller: confirmPwdController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: !onBoardingState.isConfirmPasswordVisible,
                              padding: const EdgeInsets.only(bottom: 15),
                              title: 'Confirm Password',
                              titleStyleTitle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.white,
                              ),
                              hintText: 'Enter your confirm password',
                              hintStyle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.greyMedium,
                              ),
                              errorStyle: TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.redLight,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () =>
                                    context.read<OnboardingCubit>().toggleConfirmPasswordVisible(),
                                child: Icon(
                                  onBoardingState.isConfirmPasswordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: CleanUpColor.primary,
                                  size: 18,
                                ),
                              ),
                              validator: (val) {
                                if (val?.trim().isEmpty ?? true) {
                                  return "Please enter your confirm password";
                                } else if (val != pwdController.text) {
                                  return "Password don't match!";
                                }
                                return null;
                              },
                              color: CleanUpColor.searchBarColor,
                            ),
                        ],
                      ),
                    ),
                    if (!onBoardingState.switchSignUp)
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: CleanUpColor.greyLight,
                              fontSize: 12,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                            textAlign: TextAlign.right,
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
                          handleAuth(isSignUp: onBoardingState.switchSignUp);
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
                    SizedBox(height: SizeSpacing().doubleSpacing20),
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(thickness: 0.5, color: CleanUpColor.greyMedium)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                              color: CleanUpColor.greyLight,
                              fontSize: 12,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                          ),
                        ),
                        const Expanded(
                            child: Divider(thickness: 0.5, color: CleanUpColor.greyMedium)),
                      ],
                    ),
                    SizedBox(height: SizeSpacing().doubleSpacing20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SquareButton(
                          onTap: () {},
                          widget: const Image(
                            width: 40,
                            height: 40,
                            image: AssetImage(CleanUpImages.google),
                          ),
                        ),
                        SizedBox(width: SizeSpacing().doubleSpacing20),
                        SquareButton(
                          onTap: () {},
                          widget: const Image(
                            width: 40,
                            height: 40,
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
                          onBoardingState.switchSignUp
                              ? 'Already have an account'
                              : 'Not a member?',
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
          ),
        );
      },
    );
  }
}
