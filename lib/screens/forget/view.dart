import 'package:flutter/material.dart';

import 'widgets/change_password.dart';
import 'widgets/fieldemail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgotten Password",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          EmailFelid(),
          ResetPassword(),
        ],
      ),
    );
  }
}
