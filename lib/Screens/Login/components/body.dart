import 'package:flutter/material.dart';
import 'package:itmm_app/Screens/Login/components/background.dart';
import 'package:itmm_app/components/text_field_container.dart';
import 'package:itmm_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset('assets/Pass.png',
          height: size.height * 0.3,
          ),
          RoundedTextField(hintText: "Your student ID",
          onChanged: (value) {},),
          ],
       ),
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged; 
  const RoundedTextField({
    Key key,
     this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
          icon,
          color: KPrimaryColor),
          hintText: hintText,
          border: InputBorder.none),),
    );
  }
}