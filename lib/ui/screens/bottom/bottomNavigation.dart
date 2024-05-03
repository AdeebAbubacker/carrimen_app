import 'package:carrimen_app/core/constants/const.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    // HomeScreen(),
    // accountPage(),
    // accountPage(),
    // accountPage(),
    // accountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: ColorConstants.purpleColor96,
      selectedLabelStyle:TextStyle(color: ColorConstants.purpleColor96) ,
      unselectedItemColor: ColorConstants.bottombarIconColor,
      unselectedLabelStyle:TextStyle(color: ColorConstants.bottombarTextColor) ,
      onTap: _onItemTapped,
    );
  }
}
