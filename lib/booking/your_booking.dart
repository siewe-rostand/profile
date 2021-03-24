import 'package:flutter/material.dart';
import 'package:vorides_profile/HomePage.dart';

class YourBooking extends StatefulWidget {
  @override
  _YourBookingState createState() => _YourBookingState();
}

class _YourBookingState extends State<YourBooking> {
  bool isButtonPressed = false;
  @override
  void initState() {
    super.initState();
    isButtonPressed = true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            }),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: FlatButton(
                shape: isButtonPressed ? UnderlineInputBorder() : null,
                  onPressed: () {},
                  child: Text(
                    'Current Booking',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ))),
          Expanded(
              child: FlatButton(
                  shape: isButtonPressed ? null : UnderlineInputBorder(),
                  onPressed: () {
                    setState(() {
                      isButtonPressed = !isButtonPressed;
                    });
                    },
                  child: Text(
                    'Booking History',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ))),
          Expanded(
              child: FlatButton(
                  shape: isButtonPressed ? null : UnderlineInputBorder(),
                  onPressed: () {
                    setState(() {
                      isButtonPressed = !isButtonPressed;
                    });
                  },
                  child: Text(
                    'Booking Request',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ))),
        ],
      ),
    );
  }
}
