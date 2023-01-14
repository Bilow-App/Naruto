// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:starter/configs/configs.dart';

class Kids {
  final Widget? backgroundChild;
  final Widget? foregroundChild;
  final Widget? mainChild;
  final List<Widget>? mainChildren;

  const Kids({
    Key? key,
    this.backgroundChild,
    this.foregroundChild,
    this.mainChild,
    this.mainChildren,
  }) : assert(mainChild == null || mainChildren == null);
}

class FloatingAction {
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  FloatingAction({
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
  });
}

class PAScaffold extends StatelessWidget {
  final bool platformAware;
  final bool includePadding;
  final bool largeTitle;
  final bool centerTitle;
  final bool resizeToAvoidBottomInset;
  final Widget? leading;
  final String title;
  final Widget? middle;
  final List<Widget> trailing;
  final Color? appBarColor;
  final Color? backgroundColor;
  final ScrollController? scrollController;
  final Kids? kids;
  final FloatingAction? floatingAction;

  const PAScaffold({
    Key? key,
    this.platformAware = true,
    this.includePadding = true,
    this.largeTitle = false,
    this.centerTitle = false,
    this.resizeToAvoidBottomInset = true,
    this.leading,
    this.title = '',
    this.middle,
    this.trailing = const [],
    this.appBarColor,
    this.backgroundColor,
    this.scrollController,
    this.kids,
    this.floatingAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          ),
          if (kids?.backgroundChild != null) kids!.backgroundChild!,
          Material(
            type: MaterialType.transparency,
            child: kIsWeb
                ? _body(context)
                : largeTitle
                    ? _largeScaffold(context)
                    : Platform.isIOS
                        ? _iosScaffold(context)
                        : _androidScaffold(context),
          ),
          if (kids?.foregroundChild != null) kids!.foregroundChild!,
        ],
      );

  Widget _iosScaffold(BuildContext context) => CupertinoPageScaffold(
        backgroundColor: backgroundColor ?? _backgroundColor(Theme.of(context)),
        navigationBar: CupertinoNavigationBar(
          leading: _leading(context),
          automaticallyImplyLeading: false,
          automaticallyImplyMiddle: false,
          middle: _middle(Theme.of(context)),
          trailing: _trailing(context),
          border: _borderless(),
          backgroundColor: appBarColor ?? _backgroundColor(Theme.of(context)),
        ),
        child: _body(context),
      );

  Widget _androidScaffold(BuildContext context) => Scaffold(
        backgroundColor: backgroundColor ?? _backgroundColor(Theme.of(context)),
        appBar: AppBar(
          leading: _leading(context),
          automaticallyImplyLeading: false,
          title: _middle(Theme.of(context)),
          actions: trailing,
          elevation: 0.0,
          backgroundColor: appBarColor ?? _backgroundColor(Theme.of(context)),
          centerTitle: centerTitle,
        ),
        extendBody: true,
        body: _body(context),
      );

  Widget _largeScaffold(BuildContext context) => Scaffold(
        backgroundColor: backgroundColor ?? _backgroundColor(Theme.of(context)),
        extendBody: true,
        body: CustomScrollView(
          controller: scrollController,
          physics: Configs.scrollPhysics,
          slivers: [
            Platform.isIOS
                ? CupertinoSliverNavigationBar(
                    largeTitle: _middle(Theme.of(context)),
                    leading: _leading(context),
                    automaticallyImplyLeading: false,
                    automaticallyImplyTitle: false,
                    trailing: _trailing(context),
                    border: _borderless(),
                    backgroundColor:
                        appBarColor ?? _backgroundColor(Theme.of(context)),
                  )
                : SliverAppBar.medium(
                    leading: _leading(context),
                    automaticallyImplyLeading: false,
                    title: _middle(Theme.of(context)),
                    actions: trailing,
                    elevation: 0.0,
                    backgroundColor:
                        appBarColor ?? _backgroundColor(Theme.of(context)),
                    centerTitle: centerTitle,
                  ),
            SliverToBoxAdapter(
              child: _body(context),
            ),
          ],
        ),
      );

  Widget? _leading(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: leading,
      );

  Widget _middle(ThemeData theme) =>
      middle ??
      Text(
        title,
        style: theme.appBarTheme.titleTextStyle,
      );

  Widget _trailing(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: trailing,
        ),
      );

  Border _borderless() => Border.all(
        color: Colors.transparent,
        width: 0.0,
        style: BorderStyle.none,
      );

  Color _backgroundColor(ThemeData theme) =>
      backgroundColor ?? theme.backgroundColor;

  Widget _body(BuildContext context) => Stack(
        children: [
          if (kids?.mainChild != null)
            Container(
              padding: includePadding ? Configs.edgeInsetsAll : null,
              child: kids!.mainChild!,
            ),
          if (kids?.mainChildren != null)
            ListView(
              controller: scrollController,
              physics: Configs.scrollPhysics,
              padding: includePadding ? Configs.edgeInsetsAll : null,
              children: kids!.mainChildren!,
            ),
        ],
      );
}
