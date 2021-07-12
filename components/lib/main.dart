import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

 // import 'package:components/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es','US'),
        const Locale('es','ES')
      ],
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      routes:  getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Ruta Llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}