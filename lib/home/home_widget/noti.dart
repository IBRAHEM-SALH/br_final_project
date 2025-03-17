import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الأشعارات',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial', // يمكنك تغيير الخط هنا إذا كان لديك خط معين
      ),
      home: NotificationsScreen(),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأشعارات'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '5:12',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  'القاد بك',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // يمكنك إضافة المزيد من العناصر هنا إذا لزم الأمر
          ],
        ),
      ),
    );
  }
}