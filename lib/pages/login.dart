import 'package:easy_elea/widgets/app_textbox.dart';
import 'package:easy_elea/widgets/auth_template.dart';
import 'package:flutter/material.dart';
import 'package:easy_elea/utils/app_titles_text.dart';

class Login extends StatefulWidget {
  static const String id = 'login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final TextTheme textTheme = Theme.of(context).textTheme;

    return AuthTemplate(
      onLogin: () async {},
      body: Column(
        children: [
          AppTextFormField(
            placeHolderText: "example@domain.com",
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextFormField(
            placeHolderText: "**********",
            labelText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            isObscureText: true,
            textController: passwordController,
          ),
        ],
      ),
    );
  }
}
