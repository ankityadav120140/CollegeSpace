import 'package:flutter/material.dart';
import 'register.dart';
import 'package:CollegeSpace/main.dart';
import 'home.dart';

// ignore: camel_case_types
class logIn extends StatefulWidget {
  @override
  _logInState createState() => _logInState();
}

// ignore: camel_case_types
class _logInState extends State<logIn> {
  var mail, pw;
  check(context) {
    if (mail == null) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Email ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      );

      Scaffold.of(context).showSnackBar(snackBar);
    } else {
      if (mail == email) {
        if (pw == pass) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        } else {
          final snackBar = SnackBar(
            backgroundColor: Colors.red,
            duration: Duration(seconds: 1),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Invalid password !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          );

          Scaffold.of(context).showSnackBar(snackBar);
        }
      } else {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Invalid email !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );

        Scaffold.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) => Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(130),
                  child: Image.asset('images/CollegeSpace.jpg'),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                    onChanged: (val) {
                      mail = val;
                    },
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    onChanged: (val) {
                      pw = val;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: () {
                          check(context);
                        },
                        child: Text(
                          "Log in",
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
                    Container(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => register(),
                            ),
                          );
                        },
                        child: Text(
                          'New user? register here',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
