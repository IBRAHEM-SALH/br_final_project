import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'noti.dart';
import 'profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [
    VideoScreen(),
    MainHomeScreen(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 32,
        selectedItemColor: Colors.blue, // جعل الأيقونات باللون الأزرق
        unselectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.video),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user),
            label: '',
          ),
        ],
      ),
    );
  }
}

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/logotext.png",
          height: 40,
        ),
      ),
      body: Center(child: Text('Video Screen Content')),
    );
  }
}

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/logotext.png",
          height: 40,
        ),
        actions: [
          IconButton(
            icon: Icon(LucideIcons.bell, size: 35),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}

