import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

AnimatedBuilder AnimatedLogoSliding(animation) {
  return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
            position: animation, child: Image.asset(AssetsData.logo));
      });
}

AnimatedBuilder AnimatedTextSliding(animation) {
  return AnimatedBuilder(
    builder: (context, _) {
      return SlideTransition(
        position: animation,
        child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      );
    },
    animation: animation,
  );
}
