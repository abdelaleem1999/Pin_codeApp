import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'change_password.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  late Timer _timer;

  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(


        height: MediaQuery.of(context).size.height/3,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Confirm code",
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,bottom: 10),
              child: PinCodeTextField(
              keyboardType: TextInputType.number ,
                pinTheme: PinTheme(
                  inactiveColor: Colors.white12,
                  activeColor: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Colors.white,
                length: 4,
                onChanged: (value) {},
                appContext: context,
                obscureText: false,
                cursorColor: Colors.white,
                boxShadows: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 3,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "you can resend code after",
                ),
                Text(
                  "$_start",
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
                Text(
                  "sec.",
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: MaterialButton(
                color: Colors.deepPurple,
                onPressed: () {
                  startTimer();
                },
                child: Center(
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
