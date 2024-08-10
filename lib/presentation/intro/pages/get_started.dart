import 'package:build_spotify_with_flutter/common/helper/navigation_service.dart';
import 'package:build_spotify_with_flutter/common/widgets/buttons/basic_button.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_images.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_vectors.dart';
import 'package:build_spotify_with_flutter/core/config/theme/app_colors.dart';
import 'package:build_spotify_with_flutter/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            decoration: const BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill, image: AssetImage(AppImages.introBg)),
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
                  "Enjoy Listening To Music",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
                const Gap(20.0),
                const Text(
                  "Loren Ipsum is simply dummy text of the printing and typesetting industry. Loren Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(20),
                BasicAppButton(onPressed: (){
                  ;
                  NavigationService().navigatePush(context, const ChooseModePage());
                }, title: "Get Started", height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
