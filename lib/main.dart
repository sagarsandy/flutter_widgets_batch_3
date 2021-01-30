import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showCheckMark = false;
  int _value = 1;
  List<String> sports = [
    "Cricket",
    "Football",
    "Hockey",
    "Bingo",
    "Pogo",
    "Zoomer",
    "Muffler",
    "Pingo",
    "King",
    "Tokyo"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Card",
                style: TextStyle(fontSize: 20),
              ),
              Card(
                shadowColor: Colors.red,
                borderOnForeground: true,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Chips",
                style: TextStyle(fontSize: 20),
              ),
              Wrap(
                spacing: 15,
                runSpacing: 25,
                direction: Axis.horizontal,
                children: [
                  Chip(
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.cyan,
                    elevation: 20,
                    shadowColor: Colors
                        .cyan, // When the elevation is set, then this is useful
                    labelPadding: EdgeInsets.all(5),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: Text(
                        'SS',
                      ),
                    ),
                    label: Text("Chip"),
                    deleteIcon: Icon(
                      Icons.remove_circle,
                      // color: Colors.red[200],
                    ),
                    deleteIconColor: Colors.purple,
                    deleteButtonTooltipMessage: "Click to delete",
                    onDeleted: () {
                      print("Delete pressed");
                    },
                  ),
                  InputChip(
                    padding: EdgeInsets.all(10),
                    // avatar: CircleAvatar(
                    //   backgroundColor: Colors.blue.shade900,
                    //   child: Text(
                    //     'SS',
                    //   ),
                    // ),
                    label: Text("Input Chip"),
                    labelPadding: EdgeInsets.all(5),
                    backgroundColor: Colors.white,
                    autofocus: true,
                    elevation: 10,
                    shadowColor: Colors.grey,
                    isEnabled: true,
                    onPressed: () {
                      setState(() {
                        showCheckMark = !showCheckMark;
                      });
                    },
                    // onSelected: (value) {
                    //   if(value) {
                    //     setState(() {
                    //       showCheckMark = true;
                    //     });
                    //   }
                    // },
                    pressElevation: 20.0,
                    selected: showCheckMark,
                    selectedColor: Colors.cyan,
                    selectedShadowColor: Colors.cyan,
                    checkmarkColor: Colors.white,
                    showCheckmark: true,
                  ),
                  ActionChip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text('AB'),
                      ),
                      label: Text('ABD'),
                      onPressed: () {
                        print("ABD");
                      })
                ],
              ),
              SizedBox(height: 20),
              Text("Choice Chips, Select your fav sport"),
              Wrap(
                spacing: 5,
                alignment: WrapAlignment.spaceEvenly,
                direction: Axis.horizontal,
                children: List<Widget>.generate(
                  sports.length,
                  (int index) {
                    return ChoiceChip(
                      label: Text(sports[index]),
                      selected: _value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : null;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
              SizedBox(height: 30),
              Text(
                "Circular Progress",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 3.0,
                  backgroundColor: Colors.orangeAccent,
                  // value: 23,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Clip Oval",
                style: TextStyle(fontSize: 20),
              ),
              ClipOval(
                // clipper: MyCustomClipper(),
                child: Container(
                  width: 300,
                  height: 200,
                  color: Colors.orangeAccent,
                ),
              ),
              SizedBox(height: 20),
              ClipRect(
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: 2,
                  widthFactor: 0.5,
                  child: Container(
                    width: 300,
                    height: 200,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: 100, maxWidth: 100, minHeight: 50, minWidth: 60),
                child: Card(child: Text('H')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyCustomClipper extends CustomClipper<Rect> {
//   @override
//   Rect getClip(Size size) {
//     return Rect.fromLTWH(10, 10, 40, 90);
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
//     return true;
//   }
// }
