import 'dart:async';

import 'package:advanced_course/presentation/resources/color_manager.dart';
import 'package:advanced_course/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay(){
    print('Timer Started');
    _timer=Timer(const Duration(seconds: 5), _nextPage);
  }

  _nextPage(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }
  @override
  initState(){
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body:  const Center(
        child: Image(
          image: AssetImage(ImageAssets.splashLogo),
        ),
      ),
    );
  }
  @override
  dispose(){
    _timer!.cancel();
    print('Timer ended');
    super.dispose();
  }

}
