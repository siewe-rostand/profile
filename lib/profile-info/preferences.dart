import 'package:flutter/material.dart';
import 'package:vorides_profile/HomePage.dart';

class Preferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
        leading:
        IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Chattiness',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.chat_bubble_outlined,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.chat_bubble,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.chat_bubble_outlined,
                              color: Colors.lightGreen.shade800,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Smoking',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.smoke_free_rounded,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.smoking_rooms,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.smoking_rooms_outlined,
                              color: Colors.lightGreen.shade800,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Pets',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.pets_rounded,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.pets,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.pets,
                              color: Colors.lightGreen.shade800,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Musics',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.music_off_rounded,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.music_note,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.music_note,
                              color: Colors.lightGreen.shade800,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Luggage',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.card_travel_rounded,
                              color: Colors.lightGreen.shade700,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.work_rounded,
                              color: Colors.lightGreen.shade700,
                              size: 50,
                            ),
                            onPressed: () {}),
                      )),
                  Card(
                      child: Container(
                        height: 75,
                        width: 75,
                        child: IconButton(
                            icon: Icon(
                              Icons.shopping_bag,
                              color: Colors.lightGreen.shade700,
                              size: 50,
                            ),
                            onPressed: () {}),
                      ),
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
