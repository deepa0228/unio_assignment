import 'package:flutter/material.dart';
import 'package:project/model/events.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Event event;

  const DetailsScreen({Key key, this.event}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed:(){ Navigator.pop(context);
        },
        color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: SafeArea(
              child: SingleChildScrollView(
          child:Column(
            children: [
              Image.asset(event.image,fit: BoxFit.fitWidth,),
              SizedBox(
                height:15
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Event:${event.title}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text(event.date,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ],
              ),
              SizedBox(
                height:20
              ),
              Text('No of Attenders: ${event.noOfUsers.toString()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              SizedBox(
                height:15
              ),
              
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                 event.description,
                   style: TextStyle(height: 1.7),
                 ),
            ),
            SizedBox(
                height:15
              ),

              _buildAttend(context),
          ],)
        ),
      ),
    );
  }
Widget _buildAttend(context){
  
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {},
            child: Text(
              "Attend Event",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
}
  
}
                
 
