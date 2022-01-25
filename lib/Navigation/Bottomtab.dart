import 'package:flutter/material.dart';
import 'package:fruithub/Pages/Account.dart';
import 'package:fruithub/Pages/Cart.dart';
import 'package:fruithub/Pages/Home.dart';
import 'package:fruithub/Pages/notification.dart';

class Bottomtab extends StatefulWidget {
  const Bottomtab({Key? key}) : super(key: key);

  @override
  _BottomtabState createState() => _BottomtabState();
}

class _BottomtabState extends State<Bottomtab> {
  int _selectedindex = 0;

  void _navigatePages(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _Pages = [Home(), Account(), Cart(), NotificationApp()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEDEFF4),
      body: _Pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: _selectedindex,
          onTap: _navigatePages,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xffA4DE47),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "MAIN"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "")
          ]),
    );
  }
}
