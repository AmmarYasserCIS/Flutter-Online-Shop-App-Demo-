import 'package:flutter/material.dart';
import 'package:projects/BottomNav/Layout.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => layoutscreen()));
            }, icon: Icon(Icons.arrow_back_ios_new)),

        title: Text(
          "About Us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'About Our Company',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text("My name is Ammar Yasser I'm Stand-alone Developer Who works with myself right now"),
            SizedBox(height: 20),
            Text(
              'Our Team',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 40,
                  backgroundImage: AssetImage('images/team_member1.png'),

                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 40,
                  backgroundImage: AssetImage('images/team_member2.png'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 40,
                  backgroundImage: AssetImage('images/team_member3.png'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('ammaryassercis@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('01019604119'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Damietta'),
            ),
          ],
        ),
      ),
    );
  }
}