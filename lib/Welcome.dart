import 'package:flutter/material.dart';
import 'Forgot.dart';
import 'Profile.dart';
import 'button.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});
  List<AssetImage> images=[
    AssetImage('asset/images/icons/google-icon.svg'),
    AssetImage('asset/images/icons/facebook-2.svg'),
    AssetImage('asset/images/icons/twitter.svg'),
  ];
  @override
  State<Welcome> createState() => _SignUpState();
}

class _SignUpState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,leading: IconButton( iconSize:30, icon: const Icon(Icons.arrow_back, color: Colors.black) ,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        ),
        body:SafeArea(child:Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 10) ,
          child: Column(
            children: [
              SizedBox(height: 60.0),
              Center(
                child: Text('Welcome Back', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,
                ),textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5.0),
              Center(
                child: Text('Sign in with your email and password ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.left,
                ),
              ),
              Center(
                child: Text('or continue with social media',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
                ),
              ),
              //email
              SizedBox(height: 40.0),
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
                        )
                    ),
                  ),
                ),
              ),

              //password
              SizedBox(height: 5.0),
              Text('Password',style: TextStyle(color: Colors.grey),textAlign:TextAlign.left
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller:TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password',
                        suffixIcon: Icon(Icons.lock, color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)),
                        )
                    ),
                  ),
                ),
              ),


              //Continue Button
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
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outline_blank),),
                  Text('Remember me', style: TextStyle(color: Colors.grey),textAlign: TextAlign.left),
                  SizedBox(width:100.0),
                  TextButton(
                    onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Forgot())); },
                    child: Text('Forgot password', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline),textAlign: TextAlign.right,)

                  ),
          ],
              ),

              //Icons:gmail,Fb,..
              SizedBox(height: 20.0),
              Center(
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Image.asset('asset/images/icons/google-icon.svg'),),
                    SizedBox(height: 10.0),
                    IconButton(onPressed: (){}, icon: Image.asset('asset/images/icons/facebook-2.svg'),),
                    SizedBox(height: 10.0),
                    IconButton(onPressed: (){}, icon: Image.asset('asset/images/icons/twitter.svg'),),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),

              //comment
              SizedBox(height: 70.0),
              Center(
                child: Row(
                  children: [
                    Text('Dont have an account?', style: TextStyle(color: Colors.grey, fontSize: 20.0,),
                    ),
                    Text('Sign Up', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20.0),)
                  ],
                ),
              ),

            ],
          ),

        ),

        )
    );







  }
}



