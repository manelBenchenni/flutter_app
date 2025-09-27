import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/womenPage.dart';

class LoginScreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            decoration: BoxDecoration( gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [

                Color(0xFFE53935), // Tomato red
                Color(0xFFFFB74D), // Light orange

              ],
            ),

            ),
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text("Login \nFor more !" ,
                    style:
                    TextStyle(color: Colors.white,fontSize: 25.0 ,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 525.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                    ),

                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Gmail',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true, // hides the password
                        ),
                        SizedBox(height: 40.0),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Womenpage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                            child: Text('Login', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),

          ),
        )
    );
  }
}
