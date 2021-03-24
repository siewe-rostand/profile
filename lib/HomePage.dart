import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:vorides_profile/profile-info/add-car.dart';
import 'package:vorides_profile/profile-info/personal_information.dart';
import 'package:vorides_profile/profile-info/photo.dart';
import 'package:vorides_profile/profile-info/preferences.dart';
import 'package:vorides_profile/profile-info/verification.dart';
import 'package:vorides_profile/profile-info/postal-address.dart';
import 'package:vorides_profile/booking/your_booking.dart';
import 'package:vorides_profile/account/password.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child:ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error_outline_outlined, color: Colors.green.shade600,),
                Text('Profile Information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(),

            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInformation()));
              },
              title: Text('Personal Information'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),

            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoProfile()));
                },
              title: Text('Photo'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Preferences()));
                },
              title: Text('Preferences'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationProfile()));
                },
              title: Text('Verification'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar()));
              },
              title: Text('Car'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PostalAddress()));
                },
              title: Text('Postal Address'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error_outline_outlined, color: Colors.green,),
                Text('Booking', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>YourBooking()));
                },
              title: Text('Your Booking'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error_outline_outlined, color: Colors.green,),
                Text('Rating', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text('Rating Received '),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text('Rating Given '),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error_outline_outlined, color: Colors.green,),
                Text('Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(),

            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                },
              title: Text('Password'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),

            ListTile(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Text(" Confirmation ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('Are you sure you want to close your account?'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: RaisedButton(
                                          onPressed: (){},
                                          child: Text('Yes',style: TextStyle(color: Colors.white, fontSize: 18),),
                                          shape:RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32)
                                          ) ,
                                          color: Colors.greenAccent.shade700,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          },
                                          child: Text('No',style: TextStyle(color: Colors.white, fontSize: 18),),
                                          shape:RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32)
                                          ) ,
                                          color: Colors.blueGrey.shade700,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ));
                    });
              },
              title: Text('Close My Account'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),

            ListTile(
              onTap: (){},
              title: Text('Language'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text('Terms and conditions'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text('FAQ'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text('LogOut'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error_outline_outlined, color: Colors.green,),
                Text('Emergency', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Text("From where do you want to take the photo?"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
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
                                 RaisedButton(
                                  onPressed: (){},
                                  child: Text('Save',style: TextStyle(color: Colors.white, fontSize: 18),),
                                  shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32)
                                  ) ,
                                  color: Colors.greenAccent.shade700,
                                ),
                              ],
                            ),
                          ));
                    });
              },
              title: Text('Add Your Emergency Contact'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('My Profile View',style: TextStyle(color: Colors.white, fontSize: 18),),
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)
              ) ,
              color: Colors.greenAccent.shade700,
            )
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}