import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صدقه',style: TextStyle(fontSize: 80),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'اسم المستخدم',
              ),),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'كلمة المرور',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('تسجيل الدخول'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {

              },
              child: Text('تسجيل الخروج'),
            ),
          ],
        ),
      ),
    );
  }
}