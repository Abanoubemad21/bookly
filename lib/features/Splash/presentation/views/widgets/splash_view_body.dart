import 'package:bookly/features/Splash/presentation/views/widgets/splash_view_animations.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationController2;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    super.initState();
    InitSlidingAnimations();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
    Gotohome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedLogoSliding(slidingAnimation2),
        const SizedBox(
          height: 5,
        ),
        AnimatedTextSliding(slidingAnimation),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void InitSlidingAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0, -3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  Future<Future<dynamic>?> Gotohome() {
    return Future.delayed(
        const Duration(milliseconds: 3050),
        // () => Get.to(const MyHome(),
        //     transition: Transition.leftToRightWithFade,
        //     duration: NavigateDuration),
        () => GoRouter.of(context).pushReplacement(AccessRoutes.myHome));
  }
}
