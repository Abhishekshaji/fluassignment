import 'package:flutter/material.dart';
    class Tpage extends StatefulWidget {
      const Tpage({Key? key}) : super(key: key);
    
      @override
      _TpageState createState() => _TpageState();
    }

    class _TpageState extends State<Tpage> {
      TextEditingController nameController = TextEditingController();
      bool? prefilledVal=true;

  var radioItem='val';
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('Simple Async prefilled form'),
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
                    decoration: InputDecoration (fillColor: Colors.indigoAccent, filled: true ,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(color: Colors.white),),
                      labelText: 'Prefilled text field',
                      hintText: 'Iam prefilled 🔥 yeah',
                    ),
                  ),
                ),


                Container(
                  child:
                  Theme(
                    data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                        textSelectionColor: Colors.white,
                        disabledColor: Colors.white),
                  child:
                RadioListTile<String>(
                  activeColor: Colors.white,
                  groupValue: radioItem,
                  title: Container(

                      child: Text('Option 1',style: TextStyle(color: Colors.white),)
                  ) ,
                  value: 'Item 1',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val!;
                    });
                  },
                ),
                  ),
        ),
                Container(child:
                Theme(
                  data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                      disabledColor: Colors.green),
                  child:
                  RadioListTile<String>(
                    activeColor: Colors.white,
                    groupValue: radioItem,
                    title: Text('Option 2',style: TextStyle(color: Colors.white),),
                    value: 'Item 2',
                    onChanged: (val) {
                      setState(() {
                        radioItem = val!;
                      });
                    },
                  ),
                ),
                ),
                Container(child:
                  Theme(
                    data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                        disabledColor: Colors.green),
                    child:
                  RadioListTile<String>(
                    activeColor: Colors.white,

                    groupValue: radioItem,
                    title: Text('Option 3',style: TextStyle(color: Colors.white),),
                    value: 'Item 3',
                    onChanged: (val) {
                      setState(() {
                        radioItem = val!;
                      });
                    },
                  ),
                ),
                ),
                Container(
                  child:
                  CheckboxListTile(
                    title:const Text('Prefilled boolean field', style: TextStyle(color:Colors.white),),
                    value: prefilledVal,

                    onChanged: (newValue) {
                      setState(() {
                        prefilledVal=newValue;
                      });
                    }
                    ,controlAffinity:ListTileControlAffinity.leading,
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
                    child: Text('SAVE'),
                    onPressed: () {},
                  ),
                ),
            ],),));
      }
    }
    