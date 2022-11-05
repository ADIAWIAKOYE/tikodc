import 'package:flutter/material.dart';

import '../../constants.dart';


 class Mail extends StatelessWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
            children: [
              SizedBox(height: 0,),
              Container(
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),

                  child: Column(
                    children: [

                      Container(
                        child: TextFormField(
                          style: TextStyle(color: Colors.red),
                          decoration: const InputDecoration(
                              fillColor: Colors.orange,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.solid, width: 1
                                ),
                              ),

                              labelText: 'nom / E-mail',
                              labelStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                      ),

                      const SizedBox(height: 10,),

                      Container(
                        child: TextFormField(
                          style: TextStyle(color: Colors.red),
                          decoration: const InputDecoration(
                              fillColor: Colors.orange,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.solid, width: 1
                                ),
                              ),

                              labelText: 'mot de passe',
                              labelStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                      ),

                    ],
                  ),

                ),
               ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 160, 0.0),
                child: const Text('mot de passe oublier',
                  style: TextStyle(
                    fontSize: 16,

                    color: contenuColor,
                  ),
                ),
              ),

              Container(

                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

                  child: ElevatedButton(onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      primary: borderColor1,
                      elevation: 2,
                      minimumSize: Size(250, 40),
                    ),
                    child: Text('Connexion',
                      style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: contenuColor),
                    ),
                  ),
                ),
              ),
            ]
        )

    );
  }
}
