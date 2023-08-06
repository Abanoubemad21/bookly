import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

Color maincolor = HexColor("#060f1e");
const Duration NavigateDuration = Duration(seconds: 2);
const gTSectraFine = 'GT Sectra Fine';
// ignore: non_constant_identifier_names
void Goto(context, String loc) {
  GoRouter.of(context).push(loc);
}

void GotoAndFinish(context, String loc) {
  GoRouter.of(context).pushReplacement(loc);
}

void BackTo(context, String loc) {
  GoRouter.of(context).pop(loc);
}

double myQueryheight(context, k) {
  return MediaQuery.of(context).size.height * k;
}

double myQuerywidth(context, k) {
  return MediaQuery.of(context).size.width * k;
}
