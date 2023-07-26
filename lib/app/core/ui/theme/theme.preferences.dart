/*
import 'package:etransito_app_flutter/app/core/ui/theme/dark.theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme.preferences.g.dart';

class ThemePreferences = ThemePreferencesBase with _$ThemePreferences;

abstract class ThemePreferencesBase with Store {
  BuildContext? ctx;

  ThemePreferencesBase(this.ctx);

  @observable
  ThemeData? themeType;

  @computed
  bool get isDark => themeType?.brightness == Brightness.dark;

  @action
  void changeTheme() {
    if(ctx == null) return;

    if (isDark) {
      themeType = DarkTheme.of(ctx!);
      _save(true);
      return;
    }

    themeType = LightTheme.of(ctx!);
    _save(false);
  }

  load(BuildContext context) {
    ctx = context;

    if (themeType != null) return;

    SharedPreferences.getInstance().then((prefs) {
      bool isDark = prefs.getBool("isDark") ?? false;
      themeType = isDark ? DarkTheme.of(ctx!) : LightTheme.of(ctx!);
    });
  }

  _save(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDark", isDark);
  }

  static ThemePreferences? instance;

  factory ThemePreferencesBase.of(BuildContext ctx) {
     instance = ThemePreferences(ctx);
     return instance!;
  }
}
*/

import 'package:flutter/material.dart';

import 'ligth.theme.dart';


class ThemePreferences {
  static final ValueNotifier<ThemeData?> _theme =
  ValueNotifier<ThemeData?>(null);
  static ValueNotifier<ThemeData?> get theme => _theme;

  ThemePreferences();

  static ThemeData? of(BuildContext context) {
    _theme.value = LightTheme.of(context);
    return _theme.value;
  }
}
