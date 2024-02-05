import 'package:flutter/material.dart';

class registerScreen extends StatelessWidget {
  const registerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Join Us',
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 30),
              input("Enter your Name"),
              SizedBox(height: 10),
              input("Enter your Username"),
              SizedBox(height: 10),
              input("Enter your Email"),
              SizedBox(height: 10),
              input("Enter your Password"),
              input("Enter your Password again"),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (Route<dynamic> route) => false),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 184, 184, 184),
                    shadowColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 211, 211, 211), width: 1),
                  ),
                  child: Text('Create Account',
                      style: TextStyle(color: Colors.black))),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget input(String shadowName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(hintText: shadowName),
      ),
    );
  }
}
