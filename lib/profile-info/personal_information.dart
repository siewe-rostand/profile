import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:vorides_profile/HomePage.dart';

class PersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information'),
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
                  labelText: 'First Name',
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
                  labelText: 'Last Name',
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
                  labelText: 'Email Address',
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
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Bio',
                  hintStyle: TextStyle(color: Colors.blue.shade200),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
              keyboardType: TextInputType.multiline,
              maxLines: 10,
            ),
            SizedBox(
              height: 10,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Payment Number',
                hintText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('Save Profile Info',style: TextStyle(color: Colors.white, fontSize: 18),),
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
