import 'package:flutter/material.dart';
import 'package:CollegeSpace/views/upload.dart';
import 'package:CollegeSpace/main.dart';

// ignore: camel_case_types
class post extends StatefulWidget {
  @override
  _postState createState() => _postState();
}

// ignore: camel_case_types
class _postState extends State<post> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    currentSelected,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subCode,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          )
                        : Container(
                            child: Text(
                              "~ Author ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              Container(
                child: Image.file(material),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
