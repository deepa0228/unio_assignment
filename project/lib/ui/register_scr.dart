import 'package:flutter/material.dart';
import 'package:project/ui/verified_scr.dart';
import '../constants.dart';
import 'package:intl/intl.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
 
class _RegisterScreenState extends State<RegisterScreen> {
  DateTime selectedDate = DateTime.now();
  
  var myFormat = DateFormat('dd-MMMM-yyyy');
    String email, password,userName;
  Widget _buildRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Text(
            'Registration',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildUserNameRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            userName = value;
          });
        },
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: InputBorder.none,
            prefixIcon: Icon(
              Icons.person,
              color: mainColor,
            ),
            labelText: 'Username',
            labelStyle: const TextStyle(color: Colors.black),
            ),
      ),
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: InputBorder.none,
            prefixIcon: Icon(
              Icons.email,
              color: mainColor,
            ),
            labelText: 'Email',
            labelStyle: const TextStyle(color: Colors.black),
            ),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.lock,
            color: mainColor,
          ),
          labelText: 'Password',
          labelStyle: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildDOB() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        },
        
        
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.date_range,
            color: mainColor,
          ),
          labelText: 'Date of Birth',
          labelStyle: const TextStyle(color: Colors.black),
          hintText: selectedDate == null ?'please Enter date' : '${myFormat.format(selectedDate)}',
        ),
      ),
    );
  }

  

  Widget _buildRegisterButton() {
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifiedScreen()));
            },
            child: Text(
              "REGISTER",
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

  

 

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                
                _buildUserNameRow(),
                _buildEmail(),
                _buildPasswordRow(),
                _buildDOB(),
                _buildRegisterButton(),
                
              ],
            ),
          ),
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
    resizeToAvoidBottomPadding: false,
    backgroundColor: Color(0xfff2f3f7),
    body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          SingleChildScrollView(
                      child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(40),
                    bottomRight: const Radius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildRegister(),
              _buildContainer(),
              
            ],
          )
        ],
      ),
    ),
        ),
      );
  }

  _selectDate(BuildContext context) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: selectedDate, // Refer step 1
    firstDate: DateTime(1950),
    lastDate: DateTime(2025),
  );
  if (picked != null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
}
}

