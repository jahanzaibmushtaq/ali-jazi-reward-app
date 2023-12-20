import 'package:al_jazi_reward_app/consts/images.dart';
import 'package:flutter/material.dart';

Widget bgImageWidget(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
      image:
      DecorationImage(image: AssetImage(splashBgImage), fit: BoxFit.fill),
    ),
    child: child,
  );
}