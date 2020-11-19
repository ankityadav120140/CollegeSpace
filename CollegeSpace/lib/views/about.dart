import 'package:flutter/material.dart';

// ignore: camel_case_types
class aboutUs extends StatefulWidget {
  @override
  _aboutUsState createState() => _aboutUsState();
}

// ignore: camel_case_types
class _aboutUsState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green,
          size: 50,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'College',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Space',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/Ankit.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Ankit Yadav",
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Hi, I am in my second year when I'm starting this project. This is one of my initial flutter projects. We saw a greate need of virtual book-store in our university in lockdown period, So I along with my partner has created CollegeSpace.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "I have done the UI part of the app. So in case of any problem regarding UI part or if you feel like giving feedback to improve any part feel free to mail me here: ankit1912004@akgec.ac.in",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/Devendra.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Devendra Kumar Gupta",
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Hi, I am also in my second year when I'm starting this project. This is one of my initial flutter projects. We saw a greate need of virtual book store in our university in lockdown period, So I along with my partner has created CollegeSpace.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "I have taken care of the backend of the app. So in case of any problem in Downloading or Uploading part or if you feel like giving feedback to improve any part feel free to mail me here: devendra1912001@akgec.ac.in",
                  style: TextStyle(
                    fontSize: 17,
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
