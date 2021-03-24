import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vorides_profile/HomePage.dart';

class PhotoProfile extends StatefulWidget {
  @override
  _PhotoProfileState createState() => _PhotoProfileState();
}

File _image;

class _PhotoProfileState extends State<PhotoProfile> {
  _imgFromCamera() async {
    // ignore: deprecated_member_use
    File image = (await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50));

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    // ignore: deprecated_member_use
    File image = (await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50));

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                  new ListTile(
                    leading: new Icon(Icons.cancel),
                    title: new Text('Cancel'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
        leading:
        IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.grey[200],
                child: _image != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.file(
                    _image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                )
                    : Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: _image ==null ? AssetImage('assets/img/profile.png'):FileImage(_image),
                    fit: BoxFit.fill
                  )),
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            child: RaisedButton(
              onPressed: (){},
              child: Text('Save',style: TextStyle(color: Colors.white, fontSize: 18),),
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)
              ) ,
              color: Colors.greenAccent.shade700,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text('HOW TO CHOOSE THE RIGHT PHOTO', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done_rounded, color: Colors.lightGreen.shade700,),
                    Text('No Sunglasses', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done_rounded, color: Colors.lightGreen.shade700,),
                    Text('Facing The Camera', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done_rounded, color: Colors.lightGreen.shade700,),
                    Text('You Are Alone', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done_rounded, color: Colors.lightGreen.shade700,),
                    Text('Clear and Bright', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
