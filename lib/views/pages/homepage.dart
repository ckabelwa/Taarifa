import 'package:flutter/material.dart';
import 'package:pt_project_01/views/screen/category_screen.dart';
//import 'package:pt_project_01/models/album.dart';
//import 'package:pt_project_01/views/components/cards/album_card.dart';
import 'package:pt_project_01/views/screen/today_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = <Widget>[
      TodayScreen(),
      CategoryScreen(),
      Container(height: 400, color: Colors.blue),
      Container(height: 400, color: Colors.brown),
      Container(height: 400, color: Colors.purple),
      Container(height: 400, color: Colors.black)
    ];
    return Scaffold(
      body: DefaultTabController(
        child: _screens.elementAt(_currentindex),
        length: 5,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedIndex,
        currentIndex: _currentindex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.today, color: Colors.grey[600]),
            title: Text(
              'Today',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category, color: Colors.grey[600]),
              title: Text('categories',
                  style: TextStyle(color: Colors.grey[600]))),
          BottomNavigationBarItem(
              icon: Icon(Icons.star, color: Colors.grey[600]),
              title: Text('discoveries',
                  style: TextStyle(color: Colors.grey[600]))),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey[600]),
              title: Text('search', style: TextStyle(color: Colors.grey[600]))),
        ],
      ),
    );
  }

  void _selectedIndex(int index) {
    setState(() {
      _currentindex = index;
    });
  }
}
