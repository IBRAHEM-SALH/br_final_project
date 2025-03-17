import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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

  const ProfileInfoCardDuplicate({super.key, required this.icon, required this.label, required this.value});

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

  const ProfileOptionDuplicate({super.key, required this.icon, required this.label});

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

  const ProfileInfoCard({super.key, required this.icon, required this.label, required this.value});

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

  const ProfileOption({super.key, required this.icon, required this.label});

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

  const ProfileInfo({super.key, required this.icon, required this.label, required this.value});

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

