import 'package:build_spotify_with_flutter/common/widgets/appbar/app_bar.dart';
import 'package:build_spotify_with_flutter/common/widgets/buttons/basic_button.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_vectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context ),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 20,
          width: 20,
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(50.0),
              _registerText(),
              const Gap(50.0),
              _fullNameField(),
              const Gap(25.0),
              _emailField(),
              const Gap(25.0),
              _passwordField(),
              const Gap(25.0),
              BasicAppButton(onPressed: (){}, title: "Create Account ")
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      "Register",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField() {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Full Name",
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField() {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Email",
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField() {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Password",
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  Widget _signinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Do you already have an account?"),
          TextButton(onPressed: (){}, child: Text("Sign in"))
        ],
      ),
    );
  }
}
