import 'package:flutter/material.dart';

import '../HomePage.dart';
class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        leading:
        IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20,left: 20, right: 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Old Password',
                  hintText: 'Current Password',
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'New Password',
                  hintText: 'New Password',
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('Submit',style: TextStyle(color: Colors.white, fontSize: 18),),
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)
              ) ,
              color: Colors.greenAccent.shade700,
            )
          ],
        ),
      ),
    );
  }
}
