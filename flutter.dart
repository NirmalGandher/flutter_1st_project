import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage()
   );
  }
}

class MyHomePage extends StatefulWidget{
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

int _currentIndex = 1;

final List<Widget> _screens = [
  SearchScreen(),
  HomeScreen(),
  UsersScreen()
];

void _tappedOption(int index){
  setState(() {
    _currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.menu, color: Colors.white,)),
        title: Text("HOME PAGE", style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.verified_user_rounded, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _tappedOption,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: "Users")
      ]),
    );
  }
}

class SearchScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome to Search Screen"),),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome to Home Screen")),
    );
  }
}

class UsersScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome to Users Screen"),)
    );
  }
}