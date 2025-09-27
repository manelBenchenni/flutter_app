/*import 'package:flutter/material.dart';
import 'login.dart';
import 'womenLogin.dart';
import 'signUp.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 👈 Pushes children to the bottom
      children: [
        SizedBox(), // Empty space at the top
        Center(
          child: Text('dzEat', style:TextStyle(color:Colors.deepOrange, fontSize: 30,letterSpacing: 2)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                 // border
                  borderRadius: BorderRadius.circular(12),        // rounded corners
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange, width: 2), // border
                  borderRadius: BorderRadius.circular(12),        // rounded corners
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen2()),
                    );
                  },

                  child: Text('Signup',style:TextStyle(color: Colors.deepOrange)),
                ),
              ),
            ],
          ),
        ),// Space from very bottom
      ],
    ),);

    ;
  }
}*/

import 'package:flutter/material.dart';
import 'package:myapp/screens/womenPage.dart';
import 'login.dart';
import 'womenLogin.dart';
import 'signUp.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Couleur de fond claire
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo / titre centré
            Center(
              child: Text(
                'dzEat',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ),
            const SizedBox(height: 60),

            // Bouton Login (plein)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),


            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen2()),
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.deepOrange, width: 2),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                foregroundColor: Colors.deepOrange,
              ),
              child: const Text(
                "Woman side",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(height: 40),


            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: const Text(
                  "Don’t have an account? Create one",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
