import 'package:easy_elea/pages/login.dart';
import 'package:easy_elea/pages/signup.dart';
import 'package:easy_elea/utils/app_titles_text.dart';
import 'package:easy_elea/utils/color.utility.dart';
import 'package:easy_elea/widgets/app_link_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_elea/widgets/app_action_button.dart';

class AuthTemplate extends StatefulWidget {
  final Future<void> Function()? onLogin;
  final Future<void> Function()? onSignUp;
  final Widget body;
  AuthTemplate({this.onLogin, this.onSignUp, required this.body, super.key}) {
    assert(onLogin != null || onSignUp != null,
        'onLogin or onSignUp should not be null!');
  }

  @override
  State<AuthTemplate> createState() => _AuthTemplateState();
}

class _AuthTemplateState extends State<AuthTemplate> {
  EdgeInsetsGeometry get _padding =>
      const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0);
  bool get isLogin => widget.onLogin != null;
  String get title => isLogin ? "Login" : "Sign Up";
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: _padding
            .subtract(const EdgeInsets.symmetric(vertical: 10, horizontal: 0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: ColorUtility.lightGray,
                  ),
                ),
                // AppElevatedButton(
                //     text: title,
                //     foregroundColor: Colors.white,
                //     backgroundColor: ColorUtility.deepYellow,
                //     horizontalPadding: 0,
                //     onPressed: () {}),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Or sign with",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: ColorUtility.lightGray,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: AppElevatedButton(
                        text: title,
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff1877F2),
                        horizontalPadding: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Image.asset(
                                'assets/images/facebook-64.png',
                              ),
                            )
                          ],
                        ),
                        onPressed: () {}),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  AppElevatedButton(
                    onPressed: () {},
                    horizontalPadding: 0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 35,
                      height: 40,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLogin
                      ? 'Don\'t have an account?'
                      : 'Already have an account',
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 10,
                ),
                AppLinkButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, isLogin ? Signup.id : Login.id);
                    },
                    text: isLogin ? 'Sign Up' : 'Login',
                    foregroundColor: ColorUtility.deepYellow),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            title,
            style: AppTitles.titlesStyle,
          ),
          Expanded(
            child: Padding(
              padding: _padding,
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      widget.body,
                      AppLinkButton(
                        onPressed: () {},
                        text: 'Forgot Password?',
                        foregroundColor: ColorUtility.deepYellow,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AppElevatedButton(
                              backgroundColor: ColorUtility.deepYellow,
                              onPressed: () async {
                                if (isLogin) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  await widget.onLogin?.call();
                                  setState(() {
                                    isLoading = false;
                                  });
                                } else {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  await widget.onSignUp?.call();
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              },
                              horizontalPadding: 0,
                              child: isLoading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : Text(
                                      title,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
