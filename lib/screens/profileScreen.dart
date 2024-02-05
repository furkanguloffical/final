import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/image/p1.webp'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Micheal Wilson',
                    style: TextStyle(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            ProfileText("Username: micheal_wilson"),
            SizedBox(height: 10),
            ProfileText("Email: michealwilson@outlook.com"),
            SizedBox(height: 10),
            ProfileText("Phone: 0123456789"),
            SizedBox(height: 10),
            ProfileText("Address: 1234 Main St, New York City, NY 10030"),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Container ProfileLibraryPhoto(photo) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: Image.asset(
        photo,
        width: 150,
      ),
    );
  }

  Widget ProfileText(text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 0, 0, 0),
          width: 1,
        ),
        color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 15, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}
