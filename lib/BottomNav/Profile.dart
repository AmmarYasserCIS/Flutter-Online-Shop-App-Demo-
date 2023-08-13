import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects/about.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
              ))
        ],
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.red,
              foregroundColor: Colors.red,

            ),
            SizedBox(height: 16.0),
            StreamBuilder<User?>(
              stream: auth.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data?.email ?? 'Not logged in',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),);
                } else {
                  return Text('Not logged in');
                }
              },
            ),
            SizedBox(height: 8.0),
            // Text(
            //   'ammaryasser@example.com',
            //   style: TextStyle(
            //     fontSize: 16.0,
            //     color: Colors.grey,
            //   ),
            // ),
            SizedBox(height: 24.0),
            ListTile(
              leading: Icon(Icons.shopping_cart,color: Colors.red,),
              title: Text('My Orders'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Favorites'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.red,),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings tap
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined,color: Colors.red,),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()));


              },
            ),
          ],
        ),
      ),
    );
  }
}