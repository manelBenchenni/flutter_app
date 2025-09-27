
import 'dart:ffi';

import 'package:flutter/material.dart';



class Womenpage extends StatefulWidget{
  const Womenpage ({super.key});
  @override
   State<Womenpage> createState() => _WomenpageState();
  }
  class _WomenpageState extends State <Womenpage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50 , left: 20,right: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Center(
                child :CircleAvatar(
                  radius: 50, // size of the circle
                  backgroundImage: AssetImage('assets/charba.jpg'),
            )),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                child: Text(
                  "Name : Manel Benchenni", style: TextStyle(
                  color: Colors.grey[700],letterSpacing: 2,
                ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                child: Text(
                  "Description : Traiteur", style: TextStyle(
                  color: Colors.grey[700],letterSpacing: 2,
                ),
                ),
              ),
            ),

            ElevatedButton(onPressed: (){

            },
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

            elevation: 4,
            ),
                child:
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Edit profile " ,style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,
                      ),),
                      Icon(Icons.edit, color: Colors.white, size: 28)

                    ],
                  ),
                )
          ],
        ),
      ),


    );
  }
}