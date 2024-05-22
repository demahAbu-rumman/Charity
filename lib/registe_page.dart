 import 'package:flutter/material.dart';



class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String selectedGender="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network("https://clipart.info/images/ccovers/1516920567instagram-png-logo-transparent.png"),
          TextField(decoration: InputDecoration(hintText: "Full Name"),),
          TextField(decoration: InputDecoration(hintText: "Password"),),
          TextField(decoration: InputDecoration(hintText: "Email"),),
          Row(children: [
            Text("Male"),
            RadioListTile(value: "male", groupValue: selectedGender, onChanged: (gender){
              setState(() {
                selectedGender=gender as String;
              });
            }),
            Text("Female"),
            RadioListTile(value: "female", groupValue: selectedGender, onChanged: (gender){
              setState(() {
                selectedGender=gender as String;
              });
            }),
          ],)

        ],),
      
    );
  }
}
