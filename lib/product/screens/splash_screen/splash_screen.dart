import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/asset_address.dart';
import 'package:flutter_rick_and_morty_app/core/route/app_route.gr.dart';

enum Durations { oneSecond, twoSeconds, threeSeconds, fourSeconds, fiveSeconds }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick == Durations.twoSeconds.index + 1) {
        if (context.mounted) context.router.push(const HomeScreenRoute());
        _timer.cancel();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetAddress().splashBg), fit: BoxFit.cover)),
      ),
    );
  }
}
