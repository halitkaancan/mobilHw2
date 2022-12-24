import 'dart:async';
import 'package:flutter/material.dart';

import 'WithoutLogin.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

const title = 'PERSONNEL INFORMATION SYSTEM';

class _loginState extends State<login> {
  final TextEditingController _textController = TextEditingController();
  bool _isButtonEnabled = false;
  int _duration = 20;
  Color _textFieldColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_duration == 0) {
        timer.cancel();
      } else {
        setState(() {
          _duration--;
        });
      }
    });
    super.initState();
    _textController.addListener(() {
      setState(() {
        _isButtonEnabled = _textController.text.length == 6;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)?.settings?.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(title),
          ],
        )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                children: [
                  Text(
                      'Please enter the verification code sent to your mobile phone number with $text '),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time,
                          color: _duration == 0 ? Colors.red : Colors.black),
                      Text('$_duration',
                          style: TextStyle(
                              color: _duration == 0 ? Colors.red : Colors.black,
                              fontSize: 20)),
                    ],
                  ),
                  TextField(
                    onChanged: (value) {
                      if (value.length < 6) {
                        setState(() {
                          _textFieldColor = Colors.red;
                          _isButtonEnabled = false;
                        });
                      } else {
                        setState(() {
                          _textFieldColor = Colors.green;
                          _isButtonEnabled = true;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _textFieldColor),
                      ),
                      hintText: 'SMS Code',
                    ),
                  ),
                  const SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {
                      _isButtonEnabled
                          ? () {}
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const withoutLogin()));

                      // Perform actions when the button is pressed
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: const Text('Continue',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


