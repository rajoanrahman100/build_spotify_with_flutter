import 'package:build_spotify_with_flutter/common/helper/navigation_service.dart';
import 'package:build_spotify_with_flutter/core/config/assets/app_vectors.dart';
import 'package:build_spotify_with_flutter/presentation/intro/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo
        ),
      )
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    NavigationService().navigatePushReplacement(context, const GetStartedPage());
  }
}
