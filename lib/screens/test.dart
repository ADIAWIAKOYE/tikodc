import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

 class Test extends StatefulWidget {

//  const Test({Key key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  late DateTime _selectedDate;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),

        title:  const Text('Inscription',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: contenuColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children:  <Widget>[
                  Expanded(flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      child: Text('Quelle est ta date de naissance  ? ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: contenuColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1,
                    child: Icon(Icons.storefront_outlined,
                      size: 90.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

          Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () => _selectDate(),
            child: AbsorbPointer(
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(hintText: 'Date de naissance',

                ),
              ),
            ),
          ),
        ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

              child: ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Test()));

              },
                style: ElevatedButton.styleFrom(
                  primary: borderColor1,
                  elevation: 2,
                  minimumSize: Size(200, 40),
                ),
                child: const Text('Suivant',
                  style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: contenuColor),
                ),
              ),
            ),

    ]
      ),
    );
  }

  _selectDate() async {
    // Open bottom sheet and select date

    DateTime pickedDate = await showModalBottomSheet(
      context: context,
      builder: (context) {
        late DateTime tempPickedDate;
        return Container(
          height: 250,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoButton(

                      child: Text('Done'),
                      onPressed: () {
                        Navigator.of(context).pop(tempPickedDate);
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              Expanded(
                child: Container(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (DateTime dateTime) {
                      tempPickedDate = dateTime;
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _textEditingController.text = pickedDate.toString();
      });
    }

  }
}