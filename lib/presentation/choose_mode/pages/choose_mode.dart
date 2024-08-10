import 'dart:ui';

import 'package:build_spotify_with_flutter/common/helper/navigation_service.dart';
import 'package:build_spotify_with_flutter/common/widgets/buttons/basic_button.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_images.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_vectors.dart';
import 'package:build_spotify_with_flutter/core/config/theme/app_colors.dart';
import 'package:build_spotify_with_flutter/presentation/auth/pages/signin_or_signup.dart';
import 'package:build_spotify_with_flutter/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ChooseModePage extends StatefulWidget {
  const ChooseModePage({super.key});

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            decoration: const BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill, image: AssetImage(AppImages.chooseModeBg)),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  "Choose Mode",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF30393C).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(15.0),
                        const Text("Dark Mode", style: TextStyle(color: AppColors.grey,fontSize: 17,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    const Gap(40.0),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF30393C).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(15.0),
                        const Text("Light Mode", style: TextStyle(color: AppColors.grey,fontSize: 17,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ],
                ),
                const Gap(40.0),
                BasicAppButton(
                    onPressed: () {
                      NavigationService().navigatePush(context, const SignInOrSignupPage());
                    },
                    title: "Continue",
                    height: 50),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
