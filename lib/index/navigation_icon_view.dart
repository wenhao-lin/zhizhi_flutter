import 'package:flutter/material.dart';

class NavigationIconView {

  NavigationIconView({
    Widget? icon,
    String? title,
    TickerProvider? vsync
  }):
    item = new BottomNavigationBarItem(
      icon: icon!,
      label: title,
    ),
    controller = new AnimationController(
      duration: kThemeAnimationDuration,
      vsync: vsync!
    );

  final BottomNavigationBarItem item;
  final AnimationController controller;
}