import 'package:flutter/material.dart';
import 'package:fluassignment/tpage.dart';
class Spage extends StatefulWidget {
  const Spage({Key? key}) : super(key: key);

  @override
  _SpageState createState() => _SpageState();
}

class _SpageState extends State<Spage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nmeController = TextEditingController();

  bool? prefilledVal=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Complex Async prefiiled Form'),
        ),
        body:
        Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
              children: <Widget>[
          Container(

          padding: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(color: Colors.black),
            controller: nameController,
            decoration: InputDecoration(fillColor: Colors.indigoAccent, filled: true ,
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(color: Colors.white),),
              labelText: 'Prefilled text field',
              prefixIcon:Icon(Icons.emoji_emotions_sharp),
              hintText: 'enter the text',
            ),
          ),
        ),
        Container(

          padding: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(color: Colors.black),
            controller: nmeController,
            decoration: InputDecoration(fillColor: Colors.indigoAccent, filled: true ,
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(color: Colors.white),),
              labelText: 'Prefilled select field',
              prefixIcon:Icon(Icons.emoji_emotions_sharp),
              hintText: 'Select your options',

            ),
          ),
        ),

                  Container(
                  child:
                    CheckboxListTile(
                      title:const Text('Prefilled boolean field',style: TextStyle(color:Colors.white),),
                      value: prefilledVal,
                      onChanged: (newValue) {
                        setState(() {
                          prefilledVal=newValue;
                        });
                      }, controlAffinity:ListTileControlAffinity.leading,
                    ),
                ),
        Container(padding: EdgeInsets.all(10),
      height: 50,
      width: 100,
    child: RaisedButton (textColor: Colors.black,
    color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)),
    child: Text('SUBMIT'),
    onPressed: () {
      Navigator.push(context,MaterialPageRoute(builder: (context) => Tpage()));
    },
    ),
    ),
                Container(
                  height: 50,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  child: RaisedButton (textColor: Colors.black,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text('CLEAR'),
                    onPressed: () {},
                  ),
                ),
  ],),));
  }
}
