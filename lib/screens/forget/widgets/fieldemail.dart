import 'package:flutter/material.dart';

class EmailFelid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: ("email"),
            hintStyle: TextStyle(
              color: Colors.black26,
            )),
      ),
    );
  }
}
