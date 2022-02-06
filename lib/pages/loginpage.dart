import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:simpleapp/pages/vehiclespage.dart';
//import 'package:path/path.dart' as Path;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  _LoginPageState createState() => _LoginPageState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.black,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.black38,
            )
          ),
        ),
      )
    ]
  );

}

Widget buildPassword() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                hintText: 'Passwords',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ]
  );

}

Widget buildLoginButton(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(
      vertical: 25
    ),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () { 
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => VehiclePage()),
        );
      },
      child: Text('Sign in'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(15),
        primary: Colors.amber,
        ),
    ),
  );
}


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget> [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffffd202),
                        Color(0xffffda31),
                        Color(0xffffde48),
                        Color(0xffffe25f),
                      ]
                    )
                  ),
                 child: SingleChildScrollView(
                   physics: AlwaysScrollableScrollPhysics(),
                   padding: EdgeInsets.symmetric(
                     horizontal: 25,
                     vertical: 120,
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget> [
                       Text(
                         'Sign In',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 40,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       SizedBox(height: 50),
                       buildEmail(),
                       SizedBox(height: 20),
                       buildPassword(),
                       buildLoginButton(context),
                     ],
                   ),
                 ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
