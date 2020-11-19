import 'dart:io';

import 'package:CollegeSpace/views/login.dart';
import 'package:flutter/material.dart';
import 'package:CollegeSpace/main.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    setState(() {
      if (pickedFile != null) {
        img = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'College',
              style: TextStyle(
                fontSize: 28,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Space',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green.shade700,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  getImage();
                },
                child: img != null
                    ? CircleAvatar(
                        radius: 50,
                        backgroundImage: FileImage(
                          img,
                        ),
                      )
                    : CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          size: 40,
                        ),
                      ),
              ),
              Container(
                child: img == null
                    ? Container(
                        child: Text(
                          "Upload your profile picture",
                        ),
                      )
                    : Container(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter name",
                  ),
                  onChanged: (val) {
                    name = val;
                  },
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "example@gamil.com",
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                ),
              ),
              Container(
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "********",
                  ),
                  onChanged: (val) {
                    pass = val;
                  },
                ),
              ),
              Container(
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: "College Name",
                  ),
                  onChanged: (val) {
                    college = val;
                  },
                ),
              ),
              Container(
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: "Graduation year",
                    hintText: "2023",
                  ),
                  onChanged: (val) {
                    year = val;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => logIn(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green[800],
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
