// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "service_title": "1C:Соцсеть",
  "main": "Main",
  "people": "People",
  "rules": "Rules",
  "settings": "Settings",
  "status": "Status",
  "email": "Email",
  "phone": "Phone number",
  "adress": "Adress",
  "num_sub": "Count of subs",
  "left_posts": "Here need posts",
  "right_posts": "Count posts:",
  "refresh": "Refresh page"
};
static const Map<String,dynamic> ru = {
  "service_title": "1C:SocNetwork",
  "main": "Основное",
  "people": "Сотрудники",
  "rules": "Права доступа",
  "settings": "Настройки",
  "status": "Статус",
  "email": "Электронная почта",
  "phone": "Номер телефона",
  "adress": "Электронная почта",
  "num_sub": "Количество подписчиков",
  "left_posts": "Типо записи на стене",
  "right_posts": "Записей:",
  "refresh": "Обновить страницу"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
