// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PATabScaffold extends StatelessWidget {
  final bool platformAware;
  final List<BottomNavigationBarItem>? icons;
  final List<Widget> views;
  final ValueChanged<int>? onTap;
  final IndexedWidgetBuilder? tabBuilder;
  final int currentIndex;
  final String? restorationID;

  const PATabScaffold({
    Key? key,
    this.platformAware = true,
    this.icons,
    required this.views,
    this.onTap,
    this.tabBuilder,
    required this.currentIndex,
    this.restorationID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => kIsWeb
      ? _standardScaffold()
      : Platform.isIOS && platformAware
          ? _cupertinoScaffold()
          : _standardScaffold();

  Widget _cupertinoScaffold() => CupertinoTabScaffold(
        key: key,
        tabBar: CupertinoTabBar(
          items: icons!,
          onTap: onTap,
          currentIndex: currentIndex,
          border: Border.all(
            color: Colors.transparent,
            width: 0.0,
            style: BorderStyle.none,
          ),
        ),
        tabBuilder: tabBuilder!,
        resizeToAvoidBottomInset: false,
        restorationId: restorationID,
      );

  Widget _standardScaffold() => Scaffold(
        key: key,
        body: views[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: icons!,
          onTap: onTap,
          currentIndex: currentIndex,
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        resizeToAvoidBottomInset: false,
        restorationId: restorationID,
      );
}
