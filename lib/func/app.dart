import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:second_project/UI/homepage.dart';
import 'package:second_project/generated/locale_keys.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      title: LocaleKeys.service_title.tr(),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),//deepPurple
        useMaterial3: true,
      ),
      home: MyHomePage(title: LocaleKeys.service_title.tr()),
    );
  }
}