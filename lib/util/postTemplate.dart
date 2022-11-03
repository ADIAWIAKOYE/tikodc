  import 'package:flutter/material.dart';

  import '../constants.dart';
  import 'button.dart';

  class PostTemplate extends StatelessWidget {

    final String username;
    final String videoDescription;
    final String numberOfLikes;
    final String numberOfComments;
    final String numberOfShares;
    final  userPost;

    PostTemplate({
      required this.username,
      required this.videoDescription,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfShares,
      required this.userPost,
    });

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            // user post (at the very back)
               userPost,
            // user name and caption
            Padding(padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text('@' + username,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white,),),
                    const SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(text: videoDescription,
                              style: TextStyle(fontSize: 16, color: Colors.white,)),
                          TextSpan(
                              text: '#typ #flutter',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white,)
                          ),
                        ]
                    ))
                    //Text('tiktok ui tutorial', style: TextStyle(fontSize: 20, color: contenuColor,),),
                  ],
                ),
              ),
            ),

            //buttoms
            Padding(padding: const EdgeInsets.all(20.0),

              child:  Container(
                alignment: Alignment(1, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButton(
                      icon: Icons.favorite,
                      number: numberOfLikes,
                    ),
                    MyButton(
                      icon: Icons.chat_bubble_outline_outlined,
                      number: numberOfComments,
                    ),

                    MyButton(
                      icon: Icons.send,
                      number: numberOfShares,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
