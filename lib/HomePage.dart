import 'package:baby_sleep/MenuPage.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeView extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent.shade200,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Container(
              width: double.infinity,
              height: kToolbarHeight + MediaQuery.of(context).padding.top,
              decoration: new BoxDecoration(
                color: Colors.pinkAccent.shade100,
                boxShadow: [new BoxShadow(blurRadius: 40.9)],
                borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(size.width, 40),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent.shade100,
                      radius: 50.0,
                      backgroundImage: AssetImage('images/tractor1.png'),
                    ),
                    CircleAvatar(
                      radius: 75.0,
                      backgroundImage: AssetImage('images/car-icons-set.gif'),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent.shade100,
                      radius: 50.0,
                      backgroundImage: AssetImage('images/cloud6.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '#1 Sleeping AID for babies and their\n parents.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                // SizedBox(
                //   height: 400,
                // ),
              ],
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.pinkAccent.shade100,
                boxShadow: [new BoxShadow(blurRadius: 40.9)],
                borderRadius: new BorderRadius.vertical(
                  top: new Radius.elliptical(size.width, 40),
                ),
              ),
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MenuView()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blue,
                    child: Text(
                      '    START    ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blueGrey,
                    child: Text(
                      '    ENGLISH    ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
