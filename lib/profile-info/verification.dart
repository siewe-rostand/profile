import 'package:flutter/material.dart';
import 'package:vorides_profile/HomePage.dart';

class VerificationProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('verifications'),
        leading:
        IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 20,),
            Expanded(
              child: Text(
                'Verify your profile to become a trusted member of our community and easily find other to travel with!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Text(
                            'Please Verify Your Email Address',
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Verify your profile to become a trusted member of '
                            'our community and easily find other to travel with!'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text('Add Email',style: TextStyle(color: Colors.white, fontSize: 18),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        ) ,
                        color: Colors.greenAccent.shade700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Text(
                            'Please Verify Your Phone Number',
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Verify your profile to become a trusted member of '
                            'our community and easily find other to travel with!'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text('Verify Phone',style: TextStyle(color: Colors.white, fontSize: 18),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        ) ,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Text(
                            'Please Verify Your Govt.ID',
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Verify your profile to become a trusted member of '
                            'our community and easily find other to travel with!'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text('My Profile View',style: TextStyle(color: Colors.white, fontSize: 18),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        ) ,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: Text(
                            'Please Verify Your Driving Licence',
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Verify your profile to become a trusted member of '
                            'our community and easily find other to travel with!'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text('Verify Licence',style: TextStyle(color: Colors.white, fontSize: 18),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        ) ,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Text(
                            'Please Verify Your Address',
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                        'Verify your profile to become a trusted member of '
                            'our community and easily find other to travel with!'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text('Verify Address',style: TextStyle(color: Colors.white, fontSize: 18),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        ) ,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
