import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: .8,
        child: SizedBox(
          width: 200.0,
          height: 100.0,
          child: Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Colors.white,
            enabled: true,
            child: Image.asset('assets/images/bookloading.png'),
          ),
        ),
      ),
    );
  }
}
