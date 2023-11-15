import 'package:flutter/material.dart';

import 'OTP.dart';
import 'button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,leading: IconButton( iconSize:30, icon: const Icon(Icons.arrow_back, color: Colors.black) ,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      ),
      body: SafeArea(child:Padding(
    padding: EdgeInsets.symmetric(
        horizontal: 10),
        child:  Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60.0),
          Text('Complete profile', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,
          ),textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0),
          Text('Complete your details or continue ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
          ),
          Text('with social media',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
          ),
          SizedBox(height: 40.0),
          Text('First Name',style: TextStyle(color: Colors.grey),),
          Container( //email
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller:TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your first name',
                  suffixIcon: Icon(Icons.account_circle_outlined, color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)),
                  )
              ),
            ),
          ),

          SizedBox(height: 5.0),
          Text('Last Name',style: TextStyle(color: Colors.grey),),
          Container( //email
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller:TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your last name',
                  suffixIcon: Icon(Icons.account_circle_outlined, color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)),
                  )
              ),
            ),
          ),

          SizedBox(height: 5.0),
          Text('Phone Number',style: TextStyle(color: Colors.grey),),
          Container(//password
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller:TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your phone number',
                  suffixIcon: Icon(Icons.phone_android_sharp, color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)),
                  )
              ),
            ),
          ),

          SizedBox(height: 5.0),
          Text('Address',style: TextStyle(color: Colors.grey),),
          Container(//confirm password
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller:TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your phone address',
                  suffixIcon: Icon(Icons.location_on_outlined, color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)),
                  )
              ),
            ),
          ),


          //Continue Button
          SizedBox(height: 50.0),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  OTP()));
            },
            child: Text(
              'Continue', style: TextStyle(color: Colors.white),
            ),
          ),

          SizedBox(height: 30.0),
          Text('by continuing you confirm that you agree', style: TextStyle(color: Colors.grey, fontSize: 10.0,),
          ),
          Text(' with our terms and conditions', style: TextStyle(color: Colors.grey, fontSize: 10.0,),
          ),
        ],
      ),
      ),
    ),
      ),

    );
  }
}
