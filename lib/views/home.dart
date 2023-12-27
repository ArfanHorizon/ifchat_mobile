// login.dart
import 'package:flutter/material.dart';
import 'login.dart';
import 'mot.dart'; // Import file meet_our_team.dart

class HomePage extends StatelessWidget {
  final String ifchatLogoUrl = 'assets/images/logo.png';

  const HomePage({super.key});

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
                'IF CHAT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Sharing - Chatting Mahasiswa Informatika🔥🔥🦅',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman ChatPage saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 5.0, // Tambahkan nilai elevation sesuai kebutuhan
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 0.0),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MotPage()),
                  );
                },
                child: Text(
                  'MEET OUR TEAM',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
