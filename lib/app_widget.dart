import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/core/ui/theme/theme.preferences.dart';

class VipCardApp extends StatelessWidget {
  const VipCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ThemePreferences.theme,
        builder:(BuildContext context, ThemeData? themeData, Widget? widget) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Vip Card",
        theme: ThemePreferences.of(context),
        localizationsDelegates: const [
        ],
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      );
    }
    );
  }
}
