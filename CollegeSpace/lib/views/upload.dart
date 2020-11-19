import 'dart:io';

import 'package:CollegeSpace/views/home.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:CollegeSpace/main.dart';

File material;
var typeOfUpload = [
  'Q & A',
  'Previous year question paper',
  'Class Notes',
  'Other material'
];

var currentSelected = 'Q & A';

// ignore: camel_case_types
class upload extends StatefulWidget {
  @override
  _uploadState createState() => _uploadState();
}

// ignore: camel_case_types
class _uploadState extends State<upload> {
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    setState(() {
      if (pickedFile != null) {
        material = File(pickedFile.path);
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
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  getImage();
                },
                child: material != null
                    ? Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.file(
                            material,
                            fit: BoxFit.cover,
                          ),
                        ),
                        decoration: BoxDecoration(),
                      )
                    : Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.add_a_photo,
                          color: Colors.black45,
                        ),
                      ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Choose the type : ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  DropdownButton(
                    isExpanded: true,
                    items: typeOfUpload.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (selected) {
                      setState(() {
                        currentSelected = selected;
                      });
                    },
                    value: currentSelected,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "Give it a Title : ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Title",
                        hintText: "Regarding subject and topic",
                      ),
                      onChanged: (val) {
                        title = val;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "Give it a description : ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Description",
                        hintText: "Year,semester,subject name,etc",
                      ),
                      onChanged: (val) {
                        desc = val;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "This is related to which subject : ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Subject Code",
                        hintText: "KAS 101",
                      ),
                      onChanged: (val) {
                        subCode = val;
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
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Post',
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
            ],
          ),
        ),
      ),
    );
  }
}
