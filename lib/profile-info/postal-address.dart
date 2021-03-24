import 'package:flutter/material.dart';
import 'package:vorides_profile/HomePage.dart';

class PostalAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Postal Address'),
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
                  labelText: 'Country',
                  hintStyle: TextStyle(color: Colors.teal.shade900),
                  border: UnderlineInputBorder(),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'City',
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Postal Code',
                        hintText: 'Postal Code',
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Address',
                  hintText: 'Address',
                  hintStyle: TextStyle(color: Colors.blue.shade200),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('Save',style: TextStyle(color: Colors.white, fontSize: 18),),
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

