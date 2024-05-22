import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  int _selectedRoleIndex = 0;
  final List<bool> _selections = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'اسم المستخدم'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'كلمة المرور'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'تأكيد كلمة المرور'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ToggleButtons(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('مقدم خدمة'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('متلقي خدمة'),
                ),
              ],
              isSelected: _selections,
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0; buttonIndex < _selections.length; buttonIndex++) {
                    _selections[buttonIndex] = buttonIndex == index;
                  }
                  _selectedRoleIndex = index;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('إرسال'),
            ),
          ],
        ),
      ),
    );
  }
}




