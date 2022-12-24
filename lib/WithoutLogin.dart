import 'package:flutter/material.dart';

class withoutLogin extends StatelessWidget {
  const withoutLogin({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('PERSONNEL INFORMATION SYSTEM'),
          ],
        )),
      ),
      body: const Center(
        child: Text(
          'WELCOME  '
          ' HALİT KAAN CAN!',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50, color: Colors.grey),
        ),
      ),
    );
  }
}
