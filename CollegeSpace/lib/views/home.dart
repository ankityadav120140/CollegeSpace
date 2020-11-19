import 'package:CollegeSpace/views/about.dart';
import 'package:CollegeSpace/views/profile.dart';
import 'package:CollegeSpace/views/upload.dart';
import 'package:flutter/material.dart';
import 'package:CollegeSpace/main.dart';
import 'post.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: material != null
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => post(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7),
                                  topRight: Radius.circular(7)),
                              child: Image.file(
                                material,
                                fit: BoxFit.cover,
                              ),
                            ),
                            decoration: BoxDecoration(),
                          ),
                        )
                      : Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(vertical: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Nothing to show here",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
                Container(
                  child: title != null
                      ? Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(7),
                              bottomRight: Radius.circular(7),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 7,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      title,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    Text(
                                      currentSelected,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      subCode,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  desc,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: name != null
                                          ? Text(
                                              "~" + name + " ",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            )
                                          : Container(
                                              child: Text(
                                                "~ Author ",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 10,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 30,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green.shade700,
              ),
            ),
            ListTile(
              title: Text('About us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aboutUs(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.green.shade600,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => upload(),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
