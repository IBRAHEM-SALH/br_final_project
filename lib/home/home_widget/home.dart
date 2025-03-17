import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
      appBar: AppBar(title: Text('Video Page')),
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
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(LucideIcons.bell, size: 35),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
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



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              await Future.delayed(Duration(seconds: 1));
            },
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.blueAccent, size: 30),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue[200],
                        child: Icon(Icons.person, size: 50, color: Colors.white),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("محمد أحمد", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("example@email.com", style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                          TextButton(
                            onPressed: () {},
                            child: Text("تعديل الصورة", style: TextStyle(color: Colors.blueAccent)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ProfileInfo(icon: Icons.person, label: "الاسم", value: "محمد أحمد"),
                  ProfileInfo(icon: Icons.calendar_today, label: "تاريخ الميلاد", value: "01/01/1990"),
                  ProfileInfo(icon: Icons.email, label: "البريد الإلكتروني", value: "example@email.com"),
                  ProfileInfo(icon: Icons.phone, label: "رقم الهاتف", value: "+962 77 123 4567"),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileOption(icon: Icons.settings, label: "الإعدادات"),
                      ProfileOption(icon: Icons.support_agent, label: "مركز المساعدة"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileInfoCardDuplicate extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  ProfileInfoCardDuplicate({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 28, color: Colors.blueAccent),
        title: Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: TextButton(
          onPressed: () {},
          child: Text("تعديل", style: TextStyle(color: Colors.blueAccent)),
        ),
      ),
    );
  }
}

class ProfileOptionDuplicate extends StatelessWidget {
  final IconData icon;
  final String label;

  ProfileOptionDuplicate({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 40, color: Colors.blueAccent),
          onPressed: () {},
        ),
        Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
      ],
    );
  }
}


class ProfileInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  ProfileInfoCard({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 28, color: Colors.blueAccent),
        title: Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: TextButton(
          onPressed: () {},
          child: Text("تعديل", style: TextStyle(color: Colors.blueAccent)),
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String label;

  ProfileOption({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 40, color: Colors.blueAccent),
          onPressed: () {},
        ),
        Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  ProfileInfo({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("Edit"))
        ],
      ),
    );
  }
}




class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Center(child: Text('No new notifications')),
    );
  }
}
