import 'package:flutter/material.dart';
import 'Login.dart';
import 'WithoutLogin.dart';

void main() {
  runApp(MaterialApp(
    home: Anasayfa(),
    routes: {
      '/route1': (context) => login(),
    },
  ));
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final TextEditingController _phoneNumberController = TextEditingController();
  Color _textFieldColor = Colors.grey;
  String _formattedValue = '';
  @override
  Widget build(BuildContext context) {
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
                TextField(
                  onChanged: (value){
                      if (value.length == 11) {
                        setState(() {
                          _textFieldColor = Colors.green;
                          _formattedValue = '';
                          for (int i = 0; i < value.length; i += 4) {
                            if (i > 0) {
                              _formattedValue += ' ';
                            }
                            _formattedValue += value.substring(i, i + 4);
                          }
                        });
                      } else {
                        setState(() {
                          _textFieldColor = Colors.red;
                          _formattedValue = value;
                        });
                      }

                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _textFieldColor),
                    ),
                    );
                  },
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
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
                      Navigator.pushNamed(context, '/route1',
                          arguments: _phoneNumberController.text);
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
