import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vorides_profile/HomePage.dart';

class AddCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Car'),
        leading:
        IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }),
      ),
      body: SizedBox(
        height: 70,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: 25),
          width: double.maxFinite,
          child: RaisedButton(
            onPressed: (){},
            child: Text('Save Profile Info',style: TextStyle(color: Colors.white, fontSize: 18),),
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32)
            ) ,
            color: Colors.greenAccent.shade700,
          ),
        ),
      ),
    );
  }
}
