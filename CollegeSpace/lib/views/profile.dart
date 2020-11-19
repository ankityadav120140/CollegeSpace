import 'package:flutter/material.dart';

import '../main.dart';

// ignore: camel_case_types
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: img != null
                    ? CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(
                          img,
                        ),
                      )
                    : CircleAvatar(
                        radius: 70,
                        child: Icon(
                          Icons.person,
                          size: 40,
                        ),
                      ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "College Name : ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green.shade600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            college,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          child: const DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "Graduation Year :",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green.shade600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            year,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          child: const DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
