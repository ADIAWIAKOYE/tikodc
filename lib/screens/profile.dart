import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';

import 'authorie/profileTab1.dart';
import 'authorie/profileTab2.dart';
import 'authorie/profileTab3.dart';

class UserProfilePage extends StatelessWidget {
//  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('ADIAWIAKOYE', style: TextStyle(color: contenuColor),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: contenuColor),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.menu, color: contenuColor),
            )
          ],
        ),
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            //profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),

            ),
            // username
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('@createdbyADIAWIAKOYE',
                 style: TextStyle(color: contenuColor, fontSize: 20),
                 ),
               ),
            // number of following, followers, likes

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                child: Column(
                  children: [
                  Text('37', style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22) ,
                  ),
                  SizedBox(height: 5,),
                  Text(' Suivis ',
                      style: TextStyle(
                      color: Colors.grey,fontSize: 15) ,
                  ),
                ],),
              ),
                ),

              Expanded(
                child: Container(
                child: Column(children: [
                  Text('8', style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22) ,
                  ),
                  SizedBox(height: 5,),
                  Text('Followers',
                    style: TextStyle(
                        color: Colors.grey,fontSize: 15) ,
                  ),
                ],),
              ),
              ),

              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(children: [
                    Text('52', style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22) ,
                    ),
                    SizedBox(height: 5,),
                    Text(' J\'aime ',
                      style: TextStyle(
                          color: Colors.grey,fontSize: 15) ,
                    ),
                  ],),
                ),
              ),

            ],),

            SizedBox(height: 15,),

            // buttons -> edit profite, inta links, bookmark

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child:
                  Text('Modifier le profil', style: TextStyle(color: contenuColor, fontSize: 18),),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child:
                    Icon(Icons.camera_alt, color: Colors.grey[800],),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(15),
                  child:
                  Icon(Icons.bookmark_border, color: Colors.grey[800],),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),

              ],
            ),

            SizedBox(height: 15,),
            // bio

            Text('Ajouter une biographie',
                style: TextStyle(color: Colors.grey[700]),
            ),
            // default tab controller

            TabBar(tabs: [
              Tab(
              icon: Icon(Icons.grid_3x3, color: Colors.black,),
            ),
              Tab(
                icon: Icon(Icons.favorite, color: Colors.black,),
              ),
              Tab(
                icon: Icon(Icons.lock_outline_rounded, color: Colors.black,),
              ),
            ],
            ),

            Expanded(child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ),
            ),

          ],
        ),
        //child: Center(child: Text('Profile', style: TextStyle(fontSize: 20, color: contenuColor,),),),
      ),
    );
  }
}