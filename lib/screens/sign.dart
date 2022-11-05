//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/screens/test.dart';

import 'InscriCalandar.dart';
import 'authorie/login.dart';
import 'inscriTU.dart';

 class SignupScreen extends StatelessWidget{
  const SignupScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
          appBar: AppBar(
            centerTitle: true,

            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,),
              onPressed: () => Navigator.of(context).pop(),
            ),

            title:  const Text('Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: contenuColor,
                
              ),
            ),
            backgroundColor: backgroundColor,
          ),
            backgroundColor: backgroundColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
                ),
                const SizedBox(height: 15.0,
                ),
                const Text('Créer un compte',
                style: TextStyle(
                  color: Colors.black87,)
                ),
                const SizedBox(height: 15.0,
                ),
                SizedBox(width:200.0, //width: MediaQuery.of(context).size.width-40,
              height: 50,
                 child: Builder(
                  builder: (context) => RaisedButton(
                  onPressed: () {
                    _openPopup(context);
                  },

                  color: buttonColor,
                  textColor: Colors.white,
                  child: const Text('S\'inscrire'),
                 ),
                ),
                ),
                const SizedBox(
                  height: 15.0,
                ),


              ],
            ),
          ),  
       );
    }        
 }

 void _openPopup(context) {
   showModalBottomSheet(context: context,
   isScrollControlled: true, 
   backgroundColor: backgroundColor,
   builder: (BuildContext bc){
    return Container(
       height: MediaQuery.of(context).size.height * .90,      
       child: Padding(padding: const EdgeInsets.all(12.0),
       child: Column(
        children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: contenuColor,
                  ),
                ),
                const Icon(
                  Icons.more,
                   color: contenuColor,
                ),
              ],
              ),
              const SizedBox(height: 25.0,
              ),
              const Text(
                'Inscrivez-vous à TikODC',
             style: TextStyle(fontSize: 25.0, color: contenuColor,), 
             ),
             const SizedBox(
               height: 10.0,
             ),
             const Text(
              'Créez un profil, suivez d\'autres comptes, créez vos propres vidéos et bien plus encore.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black54
              ),
              textAlign: TextAlign.center,
              ),
          const SizedBox(
            height: 10.0,
          ),
              ButtonTheme(
                minWidth: 250.0,
                child: RaisedButton(

                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Test()));
                  },
                  //onPressed: () => {},
                 // elevation: 0.0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                      ),
                      ),
                  color: backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.user,
                        color: contenuColor,
                      ),
                      ),
                     Expanded(flex: 2, child: Text('Utiliser Telephone/e-mail/nom d\'utilisateur ',
                      style: TextStyle(fontSize: 14.0,
                      color: Colors.black87),),),
                    ],
                  ),
                  ),
                ),
                ),
          const SizedBox(
            height: 15.0,
          ),

          ButtonTheme(
            minWidth: 250.0,
            child: RaisedButton(
              onPressed: () => {},
              elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Facebook',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),


          ButtonTheme(
            minWidth: 250.0,
            child: RaisedButton(
              onPressed: () => {},
              elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.apple,
                      color: Colors.black,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Apple',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),


          ButtonTheme(
            minWidth: 250.0,
            child: RaisedButton(
              onPressed: () => {},
              elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Google',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          ButtonTheme(
            minWidth: 250.0,
            child: RaisedButton(
              onPressed: () => {},
              elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.twitter,
                      color: Colors.lightBlue,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Twitter',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),


           SizedBox(
            height: 50.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: "Tu as déjà un compte ? ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Connexion ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _openConnexion(context);
                          },
                        style: TextStyle(
                          color: Colors.red,
                        )
                    ),
                  ],
                ),
              ),
            ],
          )

        ],
        ),
       ), 
      );
   });
 }

void _openConnexion(context) {
  showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      builder: (BuildContext bc){
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close,
                        color: contenuColor,
                      ),
                    ),
                    const Icon(
                      Icons.more,
                      color: contenuColor,
                    ),
                  ],
                ),
                const SizedBox(height: 25.0,
                ),
                const Text(
                  'Connecter vous à TikODC',
                  style: TextStyle(fontSize: 25.0, color: contenuColor,),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Créez un profil, suivez d\'autres comptes, créez vos propres vidéos et bien plus encore.',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black54
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>InscriPhoneUser()));
                    },
                    //onPressed: () => {},
                    // elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.user,
                            color: contenuColor,
                          ),
                          ),
                          Expanded(flex: 2, child: Text('Utiliser Telephone/e-mail/nom d\'utilisateur ',
                            style: TextStyle(fontSize: 14.0,
                                color: Colors.black87),),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),

                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.facebook,
                            color: Colors.blue,
                          ),
                          ),
                          Expanded(flex: 2, child: Text('Continuer avec Facebook',
                            style: TextStyle(fontSize: 14.0,
                                color: Colors.black87),),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),


                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.apple,
                            color: Colors.black,
                          ),
                          ),
                          Expanded(flex: 2, child: Text('Continuer avec Apple',
                            style: TextStyle(fontSize: 14.0,
                                color: Colors.black87),),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),


                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                          ),
                          Expanded(flex: 2, child: Text('Continuer avec Google',
                            style: TextStyle(fontSize: 14.0,
                                color: Colors.black87),),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),

                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.twitter,
                            color: Colors.lightBlue,
                          ),
                          ),
                          Expanded(flex: 2, child: Text('Continuer avec Twitter',
                            style: TextStyle(fontSize: 14.0,
                                color: Colors.black87),),),
                        ],
                      ),
                    ),
                  ),
                ),


                SizedBox(
                  height: (50.0),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Je n'est pas de compte ? ",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Inscription ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _openPopup(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        );
      });
}