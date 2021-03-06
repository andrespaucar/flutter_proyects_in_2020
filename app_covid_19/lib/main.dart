import 'package:flutter/material.dart';
import 'package:app_covid_19/constant.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData( 
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor)
        ),
      ),
      home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(left: 40,top:50, right:20),
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF3383CD),
                    Color(0xFF11249F)
                    ],
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/virus.png")
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    // child: SvgPicture.asset("assets/icons/menu.svg",width: 14.0,),
                  )
                  // SvgPicture.asset("assets/icons/menu.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
  
}