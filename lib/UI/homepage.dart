import 'dart:html';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:second_project/generated/locale_keys.g.dart';

import 'package:flutter/widgets.dart';

class LangvButton extends StatelessWidget{
  Function() butFnx;

  LangvButton({super.key, required this.butFnx});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
        children: [ElevatedButton(

        onPressed: butFnx,
        child: Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 9),
          child: Text(
            context.locale.toString(),
            textAlign: TextAlign.right,
          ),
        ),
    ),]
    );
  }
}

//import 'package:second_project/UI/homepage.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      Random random = new Random();
      int randomNumber = random.nextInt(50);
      _counter = _counter + randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary, //inversePrimary
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 5),
            Row( children: [
              SizedBox(width: 10),
              LangvButton(butFnx: (){
                if (context.locale == const Locale("en")){
                  context.setLocale(const Locale("ru"));
                } else {
                  context.setLocale(const Locale("en"));
                }
              }),
              SizedBox(width: 10),
              Icon(Icons.arrow_circle_left_outlined),
              SizedBox(width: 10),
              Icon(Icons.arrow_circle_right_outlined),
              SizedBox(width: 10),
              Icon(Icons.star_border_outlined),
              SizedBox(width: 10),
              Text(
                '#NAME',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ]),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.main.tr(),
                      style: TextStyle(
                        color: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      LocaleKeys.people.tr(),
                      style: TextStyle(
                        color: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      LocaleKeys.rules.tr(),
                      style: TextStyle(
                        color: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      LocaleKeys.settings.tr(),
                      style: TextStyle(
                        color: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                    Expanded(child: Container())
                  ],
                ),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "#AVATAR"
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            LocaleKeys.status.tr(),
                            textAlign: TextAlign.center,
                            softWrap: true),
                        SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(LocaleKeys.email.tr(),
                                textAlign: TextAlign.left, softWrap: true),
                            Text(LocaleKeys.phone.tr(),
                                textAlign: TextAlign.left, softWrap: true),
                            Text(LocaleKeys.adress.tr(),
                                textAlign: TextAlign.left, softWrap: true),
                          ],
                        ),
                        Text(
                            LocaleKeys.num_sub.tr(),
                            style: Theme.of(context).textTheme.headline5,
                            textAlign: TextAlign.center,
                            softWrap: true),
                          Text(
                              "#SUBS",
                              style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                          softWrap: true),

                      ],
                    ),
                  )
                ]),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(LocaleKeys.left_posts.tr()),
                            Text(LocaleKeys.right_posts.tr())
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: LocaleKeys.refresh.tr(),
          child: const Icon(Icons.refresh) //Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
