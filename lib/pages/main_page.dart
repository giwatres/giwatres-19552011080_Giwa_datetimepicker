import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:datetimepicker_giwa/pages/dashboard_page.dart';
import 'package:datetimepicker_giwa/pages/date_page.dart';
import 'package:datetimepicker_giwa/pages/time_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
            DashboardPage(),
            DatePage(),
            TimePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.blueAccent,
            title: Text('Dashboard'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.date_range),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.redAccent,
            title: Text('Date'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.timer),
            activeColor: Colors.green,
            inactiveColor: Colors.green,
            title: Text('Time'),
          ),
        ],
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(_selectedIndex);
        },
      ),
    );
  }
}
