import 'package:flutter/material.dart';
import 'Profile.dart';
import 'button.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SignUp extends StatefulWidget {
   SignUp({super.key});
  List<AssetImage> images=[
    AssetImage('asset/google-icon.svg'),
    AssetImage('asset/facebook-2.svg'),
    AssetImage('asset/twitter.svg'),
  ];
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    child: Text('Register Account', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,
                    ),textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Center(
                    child: Text('Complete your details or continue ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.left,
                    ),
                  ),
                  Center(
                    child: Text('with social media',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
                    ),
                  ),
                  //email
                  SizedBox(height: 40.0),
                  Text('Email',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
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

                  //confirm password
                  SizedBox(height: 5.0),
                  Text('Confirm Password',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller:TextEditingController(),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Re-enter your password',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Profile()));
                      },
                      child: Text(
                        'Continue', style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  //Icons:gmail,Fb,..
                  SizedBox(height: 20.0),
                  Center(
                    child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('asset/google-icon.svg'),),
                        SizedBox(height: 10.0),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('asset/facebook-2.svg'),),
                        SizedBox(height: 10.0),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('asset/twitter.svg'),),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),

                  //comment
                  SizedBox(height: 70.0),
                  Center(
                    child: Text('by continuing you confirm that you agree', style: TextStyle(color: Colors.grey, fontSize: 10.0,),
                    ),
                  ),

                ],
              ),

          ),

    )
    );







  }
}



