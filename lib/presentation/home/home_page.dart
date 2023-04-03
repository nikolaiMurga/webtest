import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webtest/presentation/a/page_a_screen.dart';
import 'package:webtest/presentation/b/page_b_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const Icon _icon = Icon(Icons.circle);
  static const List<Widget> _widgetOptions = <Widget>[PageAScreen(), PageBScreen()];

  void _onPageTap(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: _icon, label: 'A'),
          BottomNavigationBarItem(icon: _icon, label: 'B'),
        ],
        onTap: _onPageTap,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
