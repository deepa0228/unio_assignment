import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/ui/login_scr.dart';

class VerifiedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registered Successfully 🎊🎉',style: TextStyle(fontSize: 25,color:Colors.white),),
            SizedBox(height:20),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            }, child: Text('Click Here to login'),color: Colors.white,)
          ],
        ),
      )
    );
  }
}

