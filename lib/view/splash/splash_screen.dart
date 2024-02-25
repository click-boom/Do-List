import 'package:flutter/material.dart';
import 'package:todo/res/constants.dart';

import 'package:todo/view_model/services/splash_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // homeController.getTasks();
    SplashServices.checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SplashImage(),
            const SizedBox(
              height: defaultPadding / 1.5,
            ),
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              builder: (context, value, child) {
                return Column(
                  children: [
                    SizedBox(
                      height: 3,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: LinearProgressIndicator(
                          value: value,
                          color: blue,
                          backgroundColor: neviBlue,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding / 3,
                    ),
                    Text(
                      '${(value * 100).toInt().toString()}%',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SplashImage extends StatefulWidget {
  const SplashImage({super.key});
  @override
  State<SplashImage> createState() => _SplashImageState();
}

class _SplashImageState extends State<SplashImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _controller.value),
          child: Container(
            height: 110,
            width: 110,
            padding: const EdgeInsets.all(3),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: background, borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                'assets/images/LogoDark.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
