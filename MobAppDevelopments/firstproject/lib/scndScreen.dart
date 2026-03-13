import 'package:flutter/material.dart';

class ScndScreen extends StatefulWidget {
  const ScndScreen({ Key? key }) : super(key: key);

  @override
  _ScndScreenState createState() => _ScndScreenState();
}

class _ScndScreenState extends State<ScndScreen> {
  var userDetails = {
    'name': 'Owais Ahmed',
    'email': 'owais_ahmed@aptechnorth.edu.pk',
    'phone': '+923132131242',
    'designation': 'Software Engineer',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('User Profile Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/57331778?v=4'),
            ),
            SizedBox(height: 20),
            Text(
              '${userDetails['name']}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '${userDetails['designation']}',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 10),
                Text('${userDetails['email']}'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 10),
                Text('${userDetails['phone']}'),
              ],
            ),
          ],
        ),
      )
    );
  }
}