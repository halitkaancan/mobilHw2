import 'dart:math';

import 'package:flutter/material.dart';
import 'Login.dart';
import 'WithoutLogin.dart';



/*class PersonnelApp extends StatelessWidget {
  const PersonnelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Öğrenci Uygulaması',
      home: AnaSayfa(title: 'PERSONNEL INFORMATION SYSTEM'),
      routes: {
        '/second': (context) => login(),
      },
    );
  }
}

@override
class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    String _inputText = '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
          ],
        )),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(
              30.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(

                  keyboardType:
                      TextInputType.number, // Sayı girişi için numara klavyesi
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    hintText: 'PhoneNumber',
                    hoverColor: Colors.green,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      //Icon(Icons.arrow_forward)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      primary: Colors.black,
                      //padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                      elevation: 100,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Login ",
                          ),
                          WidgetSpan(
                            child: Icon(Icons.arrow_forward, size: 14),
                          ),
                        ],
                      ),
                    )
                    //Text('Login ${Icons.arrow_forward}'),
                    ),
                const SizedBox(height: 60),
                const Text('OR'),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => withoutLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.white,
                    //padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                    elevation: 100,
                  ),
                  child: const Text(
                    'Continue without login',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/