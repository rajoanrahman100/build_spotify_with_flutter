import 'package:build_spotify_with_flutter/common/helper/is_dark_mode.dart';
import 'package:build_spotify_with_flutter/common/helper/navigation_service.dart';
import 'package:build_spotify_with_flutter/common/widgets/appbar/app_bar.dart';
import 'package:build_spotify_with_flutter/common/widgets/buttons/basic_button.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_images.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_vectors.dart';
import 'package:build_spotify_with_flutter/presentation/auth/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/config/theme/app_colors.dart';

class SignInOrSignupPage extends StatefulWidget {
  const SignInOrSignupPage({super.key});

  @override
  State<SignInOrSignupPage> createState() => _SignInOrSignupPageState();
}

class _SignInOrSignupPageState extends State<SignInOrSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBg),
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const Gap(50.0),
                    const Text(
                      "Enjoy Listening To Music",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Gap(15.0),
                    const Text(
                      "Spotify is a proprietary Swedish audio streaming and media services provider ",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Gap(40.0),
                    Row(
                      children: [
                         Expanded(
                          flex: 1,
                          child: BasicAppButton(onPressed: () {
                            NavigationService().navigatePush(context, SignUpPage());
                          }, title: "Register "),
                        ),
                        const Gap(20.0),
                         Expanded(
                          flex: 1,
                          child: Text(
                            "Sign in",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: context.isDarkMode?Colors.white:Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
