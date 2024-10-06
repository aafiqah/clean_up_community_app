import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/index.dart';
import '../../custom widget/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CleanUpColor.primary,
      body: Center(
          child: SizedBox(
        width: size.width * 0.85,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Card(
            elevation: 4,
            color: CleanUpColor.searchBarColor,
            surfaceTintColor: CleanUpColor.searchBarColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeSpacing().doubleSpacing30,
                horizontal: SizeSpacing().doubleSpacing15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      color: CleanUpColor.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing5),
                  Text(
                    'Enter Your Email Address & Password to Sign In',
                    style: TextStyle(
                      fontSize: 10,
                      color: CleanUpColor.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing20),
                  Text(
                    'Email',
                    style: TextStyle(
                      color: CleanUpColor.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing5),
                  SizedBox(
                    width: size.width,
                    child: Form(
                      key: _formKey,
                      autovalidateMode: _autoValidateMode,
                      child: TextFormField(
                        controller: emailController,
                        autocorrect: false,
                        style: TextStyle(
                          fontSize: 14,
                          color: CleanUpColor.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.all(SizeSpacing().doubleSpacing5),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              width: 1,
                              color: CleanUpColor.primary,
                            ),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: CleanUpColor.primary,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                          hintText: 'me@gmail.com',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CleanUpColor.primary,
                            ),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CleanUpColor.redMedium,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CleanUpColor.blueMedium,
                            ),
                          ),
                        ),
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (String? categoryname) {
                          if (categoryname!.trim().isEmpty) {
                            return 'Please enter your email here';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing15),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: CleanUpColor.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing5),
                  SizedBox(
                    width: size.width,
                    child: Form(
                      key: _formKey2,
                      autovalidateMode: _autoValidateMode,
                      child: TextFormField(
                        controller: pwdController,
                        autocorrect: false,
                        style: TextStyle(
                          fontSize: 14,
                          color: CleanUpColor.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.all(SizeSpacing().doubleSpacing5),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              width: 1,
                              color: CleanUpColor.primary,
                            ),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: CleanUpColor.primary,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                          hintText: 'password',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CleanUpColor.primary,
                            ),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CleanUpColor.redMedium,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CleanUpColor.blueMedium,
                            ),
                          ),
                        ),
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (String? categoryname) {
                          if (categoryname!.trim().isEmpty) {
                            return 'Please enter your email here';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing15),
                  InkWell(
                    onTap: () {
                      context.goNamed("/home_page");
                    },
                    child: Submitbutton(
                      size: size.width,
                      title: 'Sign In',
                    ),
                  ),
                  SizedBox(height: SizeSpacing().doubleSpacing15),
                  SizedBox(
                    width: size.width,
                    child: Center(
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don`t have an account?',
                              style: TextStyle(
                                color: CleanUpColor.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                            ),
                            SizedBox(width: SizeSpacing().doubleSpacing30),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Register Now',
                                style: TextStyle(
                                  color: CleanUpColor.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  decoration: TextDecoration.underline,
                                  decorationColor: CleanUpColor.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
