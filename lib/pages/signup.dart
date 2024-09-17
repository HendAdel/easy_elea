import 'dart:math';

import 'package:easy_elea/widgets/app_textbox.dart';
import 'package:easy_elea/widgets/auth_template.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  static const String id = 'signup';

  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController conPasswordController;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    conPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    conPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      onSignUp: () async {},
      body: Column(
        children: [
          AppTextFormField(
            placeHolderText: 'Type Your Name!',
            labelText: "Full Name",
            keyboardType: TextInputType.name,
            textController: nameController,
          ),
          const SizedBox(
            height: 10,
          ),
          AppTextFormField(
            placeHolderText: 'example@domain.com',
            labelText: "Email",
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          const SizedBox(
            height: 10,
          ),
          AppTextFormField(
            placeHolderText: '*******',
            labelText: "Password",
            keyboardType: TextInputType.visiblePassword,
            textController: passwordController,
            isObscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          AppTextFormField(
            placeHolderText: '*******',
            labelText: "Confirm Password",
            keyboardType: TextInputType.visiblePassword,
            isObscureText: true,
            textController: conPasswordController,
          ),
        ],
      ),
    );
  }
}
