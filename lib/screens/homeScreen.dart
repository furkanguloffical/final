import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class homeScreen extends StatelessWidget {
  homeScreen({Key? key}) : super(key: key);

  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Logout'),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Profile'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Contact'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                await secureStorage.write(
                    key: 'exampleKey', value: 'exampleValue');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Secure Storage Example: Veri yazıldı'),
                  ),
                );
              },
              child: Text('Secure Storage Example'),
            ),
          ],
        ),
      ),
    );
  }
}
