import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';
 import 'package:tikodc/widgets/text_input_filed.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TikODC', 
              style: TextStyle(
                fontSize: 40, 
                color: buttonColor, 
                 fontWeight: FontWeight.bold,
                ),
                ),
                const Text('Connectez vous', 
                style: TextStyle(
                   fontSize: 20,
                fontWeight: FontWeight.w700,
                color: contenuColor,
                ),
                ),
                const SizedBox(height: 25,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                controller: _mailController,
                labelText: 'mail',
                icon: Icons.email,
                style: null,
                ),
            ),
                 const SizedBox(height: 25,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                controller: _passwordController,
                labelText: 'mot de passe',
                icon: Icons.lock, 
                style: null,
                ),
            ),
            const SizedBox(height: 30,
            ), 
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration:  BoxDecoration(
               color: buttonColor,
               borderRadius: const BorderRadius.all(
                Radius.circular(10),
                ),
              ),
              child: InkWell(
                onTap: () {
                  print('login user');
                },
              child: const Center(
                 child:  Text('se connecter',
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700,),
                    ),
              ),
             ),
            ),
             const SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Je ne suis pas inscris? ', style: TextStyle(fontSize: 20, color: contenuColor,),),
                 InkWell(
                  onTap: () {
                    print('navigating user');
                  },
                  child: Text('s\'inscrire', style: TextStyle(fontSize: 20, color: buttonColor),),
                   )
              ],
             )
          ],
        ),
        ),
    );
  }
}