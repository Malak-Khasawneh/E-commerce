import 'package:flutter/material.dart';

import 'Profile.dart';
import 'model/button.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation:0,
        backgroundColor: Color(0xffFFFBFE),leading: IconButton( iconSize:30, icon: const Icon(Icons.arrow_back, color: Colors.black) ,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      ),
      body: SafeArea(child:Padding(
    padding: const EdgeInsets.symmetric(
        horizontal: 24) ,
    child:Column(children: [
      SizedBox(height: 40.0),
      Center(
        child: Text('Forgot password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,
        ),textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 5.0),
      Center(
        child: Text('please enter your email and we will send ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.left,
        ),
      ),
      Center(
        child: Text('you a link to return your account',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
        ),
      ),

      SizedBox(height: 60.0),
      Text('Email',style: TextStyle(color: Colors.grey),),
        Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller:TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email',
                  suffixIcon: Icon(Icons.mail_outline, color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)),
                  ),
              ),
            ),
          ),
        ),
      SizedBox(height: 50.0),
      Center(
        child: ElevatedButton(
          style: buttonPrimary,
          onPressed: () {
          },
          child: Text(
            'Continue', style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      SizedBox(height: 40.0),
      Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dont have an account?', style: TextStyle(color: Colors.grey, fontSize: 10.0,),
            ),
            Text('Sign Up', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 10.0),)
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
