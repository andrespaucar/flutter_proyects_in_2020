import 'package:flutter/material.dart';
import 'package:app_covid_19_2/screens/screens.dart';

class ButtomNavScreen extends StatefulWidget {
  @override
  _ButtomNavScreenState createState() => _ButtomNavScreenState();
}

class _ButtomNavScreenState extends State<ButtomNavScreen> {
   final List _screens =[
    HomeScreen(),
    StatsScrenn(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        currentIndex: _currentIndex,
        items: [
          Icons.home,Icons.insert_chart,Icons.event_note,Icons.info
        ].asMap()
         .map((key, value) => MapEntry(
           key, 
           BottomNavigationBarItem(
             title: Text(''),
             icon: Container( 
               padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              decoration: BoxDecoration( 
                color: _currentIndex == key
                  ? Colors.blue[600] : Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Icon(value),
             )
         )
         ),
         ).values.toList(),
        
      ),
    );
  }
}