import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/UI/Utils/assets_path.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;

  const ScreenBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SvgPicture.asset(
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
            AssetsPath.backgroundSvg),
        SafeArea(child: child),
      ],
    ));
  }
}
