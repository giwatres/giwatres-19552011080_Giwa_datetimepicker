import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPage createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Text(
          'Dashboard page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
