// import 'package:flutter/material.dart';
// void main() {
//   runApp(
//     new Center(  // 1st flutter application
//       child: new Text(
//         'this is my  first  flutter application',
//         textDirection: TextDirection.ltr,
//       ),
//     ),   x
// }

// import 'package:flutter/material.dart';
// void main() {
//   runApp(new Application()); //2nd flutter application, I made  2container inside Scaffold widget, thats  how you create two static container in stateless  widget
// }
// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//         title: 'Stateless Widget',
//         home: new Scaffold(
//             body: new Container(
//           color: Colors.pink,
//           child: new Container(
//             color: Colors.yellow,
//             margin: const EdgeInsets.all(30.0),
//           ),
//         )));
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new Application());
// }
// class Application extends StatefulWidget {  //3rd flutterr applicatioin statefull widget
//   //statefull widget practice
//   const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
// class _ApplicationState extends State<Application> {
//   String ttext = ''; // string variable
//   @override
//   void initState() {
//     ttext = 'Click on this button'; // init State
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   void method1() {
//     setState(() {
//       ttext = 'The Text is been Changed'; //setstate
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Sttateful Widget',//  materialapp ar vitore home a scaffold nisi tar vitore child a center tar vitore raisedbutton nisi
//       home: new Scaffold(
//         body: new Center(
//           child: new RaisedButton(
//             onPressed: () {
//               method1();
//             },
//             child: new Text(ttext),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 4th Container Widget and their properties

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new Application());
// }

// class Application extends StatelessWidget { // 4th Container Widget and their properties

//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       // materialApp class is a class that provides material design to your application
//       home: new Scaffold(
//         //Scaffold is a basic layout structure
//         body: new Container(
//           // color: Colors.pink, // decoration ar vitore color ar  baire color akshte use kora jabe na.
//           child: new Text('This is my Container'),
//           height: 300.0,
//           width: 300.0,
//           alignment: Alignment
//               .center, // alignment.center dile text center a chole asbe
//           padding: const EdgeInsets.all(20.0),
//           decoration: new BoxDecoration(
//             // container k decoration dite box decoration use kora hoi
//             color: Colors.green,
//           ),
//           // transform: new Matrix4.rotationZ(0.5), // container Z direction a rotate korbe transform : matrix4.rotationz(0.5)
//           foregroundDecoration: new BoxDecoration(  // foregroundDecoration child ar sob property hide kore dibe ar decoration ar sob property hide kore nijeke show korbe
//             color: Colors.deepOrange[800],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 5th Row & Column

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new Application());
// }

// class Application extends StatelessWidget {   // 5th Row and Column widget used with mainAxisalignment.center
//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "MyApplication",
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('Row and Column'),
//         ),
//         body: new Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Text('This'),
//             new Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 new Text('This'),
//                 new Text('is'),
//                 new Text('Column'),
//               ],
//             ),
//             new Text('Row'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 6th List Widget

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new Application()); // 6th List Widget
// }

// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: new Text('List Widget'),
//         ),
//         body: new ListView(
//           // consider listview as body for multiple lists
//           children: <Widget>[
//             ListTile(
//               title: Text('Ittem 1'),
//               trailing: Icon(Icons
//                   .arrow_forward), //If you want  to add icon or any other widget on the right  side of title there is a widget called trailing
//             ),
//             ListTile(
//               title: Text('Ittem 2'),
//               trailing: Icon(Icons
//                   .arrow_forward), //If you want  to add icon or any other widget on the right  side of title there is a widget called trailing
//             ),
//             ListTile(
//               title: Text('Ittem 3'),
//               trailing: Icon(Icons
//                   .arrow_forward), //If you want  to add icon or any other widget on the right  side of title there is a widget called trailing
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 7th list widget listview.builder use kore list korlam

// import "package:flutter/material.dart";
// void main() {
//   runApp(new Application());  // 7th list widget listview.builder use kore list korlam
// }
// class Application extends StatefulWidget {
//   @override
//   State<Application> createState() => _ApplicationState();
// }
// class _ApplicationState extends State<Application> {
//   @override
//   List<int> items = [];
//   void initState() {
//     for (int i = 0; i < 50; i++) {
//       items.add(i);
//     }
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dummy App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('List Widget'),
//         ),
//         body: ListView.builder(
//             itemCount: items.length, // itemcount a amra length nilam item er
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 title: Text('item no : $index'),
//                 trailing: Icon(Icons.arrow_forward),
//               );
//             }),
//       ),
//     );
//   }
// }

// //  8th Stack widget
// // Stack : For overlaping multiple widgets on each other, example: text over an image, this can be achived through stack widget.

// import 'package:flutter/material.dart';

// void main() {
//   runApp(Application());//  8th Stack widget
// }

// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stack'),
//         ),
//         body: Stack(
//           alignment: Alignment.center, //thats how we overlape multiple card widgets on eact other
//           children: <Widget>[
//             Card(
//               color: Colors.yellow,
//               child: Padding(padding: EdgeInsets.all(200.0)),
//             ),
//             Card(
//               color: Colors.red,
//               child: Padding(padding: EdgeInsets.all(100.0)),
//             ),
//             Card(
//               color: Colors.green,
//               child: Padding(padding: EdgeInsets.all(50.0)),
//             ),
//             Card(
//               color: Colors.orange,
//               child: Padding(padding: EdgeInsets.all(30.0)),
//             ),
//             Card(
//               color: Colors.brown,
//               child: Padding(padding: EdgeInsets.all(10.0)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  9th GridView

// We will create a grid that will acceptt an array list of 50.

// import 'package:flutter/material.dart';

// void main() {
//   runApp(Application());
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   State<Application> createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   List<int> _items = [];
//   @override
//   void initState() {
//     for (int i = 0; i < 50; i++) {
//       _items.add(i);
//     }
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Grid'),
//         ),
//         body: GridView.builder(   // gridview builder ar vitore itemcount amra item.length porjonto niyechi, gridview.builder ar property   hoche itemCount jeta amra niyechi item.lenght , intembuilder functionn nibe, gridelegate nibe SilverGridDelegatewithFixedCrossAxissCount
//             itemCount: _items.length,
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//             itemBuilder: (BuildContext context, int index) {
//               return Card(
//                 color: Colors.blue,
//                 child: Padding(
//                   padding: EdgeInsets.all(20.0),
//                   child: Text('index: $index'),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }

// 10th Appbar Widget

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Application(), // 10th Appbar Widget
//   ));
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   State<Application> createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text('AppBar Widget'),
//         // centerTitle: true,
//         elevation: 30.0, // elevation property controls the shadow of an appbar
//         titleSpacing: 80.0,
//         toolbarOpacity:
//             0.5, // titlespacing provides space from leftside of an appbar,If you want to provide full transparent appbar then you have to provide the value of 0 otherwise 1. if you want to make transparent than provide value 0.5.
//       ),
//     );
//   }
// }

// 11th Appbar Leading & Actions

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,  // 11th Appbar Leading & Actions
//     home: Application(),
//   ));
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   String mtext = " ";
//   @override
//   void initState() {
//     mtext = 'plz change me';
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Appbar Widget"),
//         leading: Icon(Icons.menu),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   mtext = 'You clicked on arrowforward icon';
//                 });
//               },
//               icon: Icon(Icons.arrow_forward)),
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   mtext = 'You clicked on close icon';
//                 });
//               },
//               icon: Icon(Icons.close)),
//         ],
//       ),
//       body: Center(
//         child: Text(mtext),
//       ),
//     );
//   }
// }

//  13th Tabbar: Top & Bottom TabBar & TabBar View

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Application(), //  13th Tabbar: Top & Bottom TabBar & TabBar View
//   ));
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application>
//     with SingleTickerProviderStateMixin {
//   @override
//   late TabController _tcontrol;

//   @override
//   void initState() {
//     _tcontrol = TabController(length: 3, vsync: this);
//     super.initState();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("tabbar"),
//         bottom: TabBar(controller: _tcontrol, tabs: <Widget>[
//           Tab(icon: Icon(Icons.home)),
//           Tab(icon: Icon(Icons.supervisor_account)),
//           Tab(icon: Icon(Icons.close)),
//         ]),
//       ),
//       body: TabBarView(controller: _tcontrol, children: [
//         Center(
//           child: Text('Welcome to home'),
//         ),
//         Center(
//           child: Text('Welcome to user account'),
//         ),
//         Center(
//           child: Text('Welcome to close'),
//         ),
//       ]),
//       bottomNavigationBar: Material(
//         color: Colors.blue,
//         child: TabBar(controller: _tcontrol, tabs: <Widget>[
//           Tab(icon: Icon(Icons.home)),
//           Tab(icon: Icon(Icons.supervisor_account)),
//           Tab(icon: Icon(Icons.close)),
//         ]),
//       ),
//     );
//   }
// }

// 14th Custom Class Widget

// import 'package:flutter/material.dart';
// import 'customw.dart';

// void main() {
//   runApp(Application()); // 14th Custom Class Widget
// }

// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Custom Widget",
//       home: Scaffold(
//         body: CustomWidget(), // thats how you create custom class widget in flutter
//       ),
//     );
//   }
// }

// 16th Custom Method widget is in customw.dart

// 17th Textfield widget (onchanged)

// import 'package:flutter/material.dart';

// void main() {
//   runApp(Application()); // 17th Textfield widget (onchanged)
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   String ptext = "";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Dummy Application",
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: Text("Dummy Application"),
//         ),
//         body: Column(
//           children: [
//             TextField(
//               onChanged: (String txt) {
//                 setState(() {
//                   ptext = txt;
//                 });
//               },
//             ),
//             Text(ptext),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 17th Textfield widget (onSubmited) (decoration:InputDecoration:hinttext,leveltext)
// import 'dart:html';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(Application()); // 17th Textfield widget (onSubmited)
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   String ptext = "";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Dummy Application",
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: Text("Dummy Application"),
//         ),
//         body: Column(
//           children: [
//             TextField(
//               onSubmitted: (String txt) {
//                 setState(() {
//                   ptext = txt;
//                 });
//               },
//               decoration: InputDecoration(
//                   hintText: "Type Something",
//                   labelText: 'Fullname',
//                   ),

//             ),
//             Text(ptext),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 18th Buttons raised,flat,Icon,Floating button

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(Application());
// }

// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   String ttext = "";
//   void method1(value) {
//     setState(() {
//       ttext = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Demo app",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Demo app'),
//         ),
//         body: Column(
//           children: [
//             RaisedButton(
//               onPressed: () {
//                 method1("You clicked raised buttton");
//               },
//               child: Text("raised button"),
//             ),
//             Text(ttext),
//             FlatButton(
//               onPressed: () {
//                 method1('you cicked flat button');
//               },
//               child: Text("flatbutton"),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }

//19th checkbox button

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Application(),//19th checkbox button
//   ));
// }

// class Application extends StatefulWidget {
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {
//   bool cbool = false;

//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Checkbox(
//           value: cbool,
//           onChanged: (dynamic cb) {
//             setState(() {
//               cbool = cb;
//             });
//           }),
//     ));
//   }
// }

// 20ty radio button

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Application(), //19th checkbox button
  ));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

@override
int rvalue = 0;
dynamic method1(value) {
  setState(() => rvalue = value);
}

void setState(Null Function() param0) {}

class _ApplicationState extends State<Application> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
                value: 1,
                groupValue: rvalue,
                onChanged: (dynamic rval) {
                  method1(rval);
                }),
          ],
        ),
      ),
    );
  }
}
