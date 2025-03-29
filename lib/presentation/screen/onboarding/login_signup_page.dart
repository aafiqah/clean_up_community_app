import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constant/index.dart';
import '../../cubits/index.dart';
import '../../widgets/index.dart';

class LoginSignUpPage extends StatefulWidget {
  const LoginSignUpPage({super.key});

  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final ValueNotifier<AutovalidateMode> _autoValidateModeEmail =
      ValueNotifier(AutovalidateMode.disabled);
  final ValueNotifier<AutovalidateMode> _autoValidateModePwd =
      ValueNotifier(AutovalidateMode.disabled);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    pwdController.dispose();
    _autoValidateModeEmail.dispose();
    _autoValidateModePwd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, onBoardingState) {
        return Scaffold(
          backgroundColor: CleanUpColor.primary,
          body: Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: SizeSpacing().doubleSpacing30,
                horizontal: SizeSpacing().doubleSpacing20,
              ),
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BackButtonGlobal(
                        onPressed: () {
                          context.goNamed('/onBoarding_page');
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: SizeSpacing().doubleSpacing5,
                          children: [
                            Text(
                              onBoardingState.switchSignUp
                                  ? 'Sign Up'
                                  : 'Sign In',
                              style: TextStyleShared.textStyle.title.copyWith(
                                  fontSize: 20, color: CleanUpColor.white),
                            ),
                            Text(
                              onBoardingState.switchSignUp
                                  ? 'Register with Your Email Address & Password to Sign Up'
                                  : 'Enter Your Email Address & Password to Sign In',
                              style:
                                  TextStyleShared.textStyle.subtitle.copyWith(
                                fontSize: 12,
                                color: CleanUpColor.white,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: SizeSpacing().doubleSpacing30,
                      bottom: SizeSpacing().doubleSpacing10,
                    ),
                    width: size.width,
                    child: ValueListenableBuilder<AutovalidateMode>(
                      valueListenable: _autoValidateModeEmail,
                      builder: (
                        context,
                        valueNotifierAttributeValueEmail,
                        child,
                      ) {
                        return Form(
                          key: _formKey,
                          autovalidateMode: valueNotifierAttributeValueEmail,
                          child: FormFieldWidget(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            padding: const EdgeInsets.only(bottom: 15),
                            title: 'Email',
                            titleStyleTitle:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.white,
                            ),
                            hintText: 'me@gmail.com',
                            hintStyle:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.greyMedium,
                            ),
                            errorStyle:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.redLight,
                            ),
                            validator: (String? email) {
                              if (email == null || email.trim().isEmpty) {
                                return 'Please enter your email';
                              }
                              // Regex for email validation
                              final emailRegex =
                                  RegExp(r'^[^@]+@[^@]+\.[^@]+$');
                              if (!emailRegex.hasMatch(email)) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            color: CleanUpColor.searchBarColor,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    child: ValueListenableBuilder<AutovalidateMode>(
                      valueListenable: _autoValidateModePwd,
                      builder:
                          (context, valueNotifierAttributeValuePwd, child) {
                        return Form(
                          key: _formKey2,
                          autovalidateMode: valueNotifierAttributeValuePwd,
                          child: FormFieldWidget(
                            controller: pwdController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: !onBoardingState.isPasswordVisible,
                            padding: const EdgeInsets.only(bottom: 15),
                            title: 'Password',
                            titleStyleTitle:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.white,
                            ),
                            hintText: 'Enter your password',
                            hintStyle:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.greyMedium,
                            ),
                            errorStyle:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.redLight,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () => context
                                  .read<OnboardingCubit>()
                                  .togglePasswordVisible(),
                              child: Icon(
                                onBoardingState.isPasswordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: CleanUpColor.primary,
                                size: 18,
                              ),
                            ),
                            validator: (String? pwd) {
                              if (pwd == null || pwd.trim().isEmpty) {
                                return 'Please enter your password';
                              }
                              if (pwd.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }
                              if (!RegExp(r'[A-Z]').hasMatch(pwd)) {
                                return 'Password must contain at least one uppercase letter';
                              }
                              if (!RegExp(r'[a-z]').hasMatch(pwd)) {
                                return 'Password must contain at least one lowercase letter';
                              }
                              if (!RegExp(r'\d').hasMatch(pwd)) {
                                return 'Password must contain at least one number';
                              }
                              if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                                  .hasMatch(pwd)) {
                                return 'Password must contain at least one special character';
                              }
                              return null;
                            },
                            color: CleanUpColor.searchBarColor,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 150,
            padding: EdgeInsets.symmetric(
              horizontal: SizeSpacing().doubleSpacing20,
            ),
            child: Column(
              children: [
                Submitbutton(
                  onPressed: () {
                    _autoValidateModeEmail.value = AutovalidateMode.always;
                    _autoValidateModePwd.value = AutovalidateMode.always;

                    final form = _formKey.currentState;
                    final form2 = _formKey2.currentState;

                    if (form != null &&
                        form.validate() &&
                        form2 != null &&
                        form2.validate()) {
                      form.save();
                      context.goNamed("/home_page");
                    }
                  },
                  borderRadius: SizeSpacing().doubleSpacing5,
                  width: size.width,
                  widget: Text(
                    onBoardingState.switchSignUp ? 'Sign Up' : 'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CleanUpColor.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  buttonColor: CleanUpColor.buttonColor,
                ),
                SizedBox(height: SizeSpacing().doubleSpacing20),
                SizedBox(
                  width: size.width,
                  child: Center(
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            onBoardingState.switchSignUp
                                ? 'Already have an account'
                                : 'Don`t have an account?',
                            style:
                                TextStyleShared.textStyle.bodyMedium.copyWith(
                              color: CleanUpColor.white,
                            ),
                          ),
                          SizedBox(width: SizeSpacing().doubleSpacing30),
                          InkWell(
                            onTap: () => context
                                .read<OnboardingCubit>()
                                .toggleSwitchSignUp(),
                            child: Text(
                              onBoardingState.switchSignUp
                                  ? 'Login Now'
                                  : 'Register Now',
                              style:
                                  TextStyleShared.textStyle.bodyMedium.copyWith(
                                color: CleanUpColor.white,
                                decoration: TextDecoration.underline,
                                decorationColor: CleanUpColor.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
