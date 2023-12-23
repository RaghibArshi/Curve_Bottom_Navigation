import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
          color: Colors.green.shade200,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 8.0,),
                  Icon(Icons.home, size: 30,),
                  Text('Home', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 8.0,),
                  Image.asset('assets/gold.png', height: 30, width: 30,),
                  Text('Camera', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 8.0,),
                  Icon(Icons.store, size: 30,),
                  Text('Store', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 8.0,),
                  Icon(Icons.support_agent, size: 30,),
                  Text('Contact', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 8.0,),
                  Icon(Icons.account_box, size: 30,),
                  Text('Account', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
      ),
      body: _pages[_selectedIndex],
    );
  }

  // Define your pages or sections here
  final List<Widget> _pages = [
    // Replace these with your actual pages or widgets
    Container(color: Colors.green, child: Center(child: Icon(Icons.home, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Colors.green, child: Center(child: Icon(Icons.camera_alt, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Colors.green, child: Center(child: Icon(Icons.store, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Colors.green, child: Center(child: Icon(Icons.support_agent, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Colors.green, child: Center(child: Icon(Icons.contact_page, size: 100.0, color: Color(0XFFFFE6C7),))),
  ];

}
