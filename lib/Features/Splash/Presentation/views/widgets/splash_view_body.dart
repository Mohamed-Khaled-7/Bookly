import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Features/Splash/Presentation/views/widgets/slide_text.dart';
import 'package:project/constant.dart';
import 'package:project/core/utils/app_routes.dart';
import 'package:project/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingTextAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          SlideText(slidingTextAnimation: slidingTextAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingTextAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(kDuration, () {
      // Get.to(
      //   () => HomeView(),
      //   duration: const Duration(seconds: 2),
      //   transition: Transition.fadeIn,
      // );
      GoRouter.of(context).push(AppRoutes.kHomeView);
    });
  }
}
