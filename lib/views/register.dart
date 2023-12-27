import 'package:flutter/material.dart';
import 'package:ifchat/controllers/login_controller.dart';
// import 'package:ifchat/views/login.dart';

class RegisterPage extends StatelessWidget {
  final String ifchatLogoUrl = 'assets/images/logo.png';

  final TextEditingController usr = TextEditingController();
  final TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36393F),
        title: Row(
          children: [
            Image.network(
              ifchatLogoUrl,
              height: 40.0,
            ),
            SizedBox(width: 10.0),
            Text(
              'IF Chat',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF36393F),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color(0xFF32353B),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                ifchatLogoUrl,
                height: 100.0,
              ),
              SizedBox(height: 10.0),
              Text(
                'IF CHAT - Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              // Input field for name
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  controller: usr,
                  style: TextStyle(color: Color(0xFF36393F)),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              // Input field for email
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(color: Color(0xFF36393F)),
                ),
              ),
              // Input field for password
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  style: TextStyle(color: Color(0xFF36393F)),
                  obscureText: true,
                  controller: pwd,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  // login untuk login
                  // 1. fetch data based on user
                  // 2. bandingkan user dan password dengan yang di input
                  await registerUser(context, usr.text, pwd.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 5.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 0.0),
                    Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
