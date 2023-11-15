
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Welcome.dart';
import 'package:untitled1/widget/onboard.dart';

import 'Signup.dart';
import 'button.dart';

class Home extends StatelessWidget {
  List<AssetImage> images=[
    AssetImage('asset/splash_1.png'),
    AssetImage('asset/splash_2.png'),
    AssetImage('asset/splash_3.png'),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24
        ) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),
            Text('TOKOTO', style: TextStyle(color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 40.0),
            ),
            //SizedBox(height:5.0,width:0),
            Text('Welcome to Tokoto, Lets shop!', style: TextStyle(color: Colors.grey),),
            SizedBox(height: 150.0),
            //call images
            CarouselDemo(),
            SizedBox(height: 180.0),

            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignUp()));
              },
              child: Text(
                'Continue', style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Welcome()));
              },
              child: Text(
                'Welcome', style: TextStyle(color: Colors.white),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}