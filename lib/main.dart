import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypernews/app/app_module.dart';

void main() => runApp(ModularApp(module: AppModule(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Hyp3rText',
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 0, 0, 1),
        primaryColorDark: Color.fromRGBO(0, 0, 0, 1),
        accentColor: Color.fromRGBO(0, 0, 0, 1),
        textTheme: GoogleFonts.istokWebTextTheme(textTheme)
            .copyWith(bodyText2: TextStyle(fontSize: 20.0)),
      ),
    ).modular();
  }
}
