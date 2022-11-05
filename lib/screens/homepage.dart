import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';
import 'package:tikodc/screens/home.dart';
import 'package:tikodc/screens/inbox.dart';
import 'package:tikodc/screens/plus.dart';
import 'package:tikodc/screens/profile.dart';
import 'package:tikodc/screens/profileUser.dart';
import 'package:tikodc/screens/search.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // bottom nav bar
  int  _selectedIndex = 1;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
   /* const Center(child: Text('HOME', style: TextStyle(fontSize: 20, color: contenuColor,),)),
    const Center(child: Text('SEARCH', style: TextStyle(fontSize: 20, color: contenuColor,),)),
    const Center(child: Text('PLUS', style: TextStyle(fontSize: 20, color: contenuColor,),)),
    const Center(child: Text('INBOX', style: TextStyle(fontSize: 20, color: contenuColor,),)),
    const Center(child: Text('PROFILE', style: TextStyle(fontSize: 20, color: contenuColor,),)),*/
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserInboxPage(),
    ProfileUserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: brightness,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items:  [
          const BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.white,), label: 'Search'),
        BottomNavigationBarItem(icon: Image.asset('assets/images/tiktok_add.png', height: 30,), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded, color: Colors.white,), label: 'Inbox'),
          const BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white,), label: 'Profile'),
      ],),

    );

  }
}
