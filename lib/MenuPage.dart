import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class MenuView extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuView> {
  Duration _duration = Duration();
  Duration _position = Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  int playFlag = 0;

  void initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });
    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent.shade200,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: new Container(
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
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              '...',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          'BABY SLEEP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 70,
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      'NATURE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          child: FlatButton(
                            onPressed: () {
                              audioCache
                                  .play('Crackling-fire-sound-effect.mp3');
                              playFlag = 1;
                            },
                          ),
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          child: FlatButton(
                            onPressed: () {
                              audioCache.play('Wind-blowing-sound-effect.mp3');
                              playFlag = 1;
                            },
                          ),
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text(
                      'TRANSPORT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text(
                      'HOUSEHOLD',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text(
                      'WHITE NOISE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text(
                      'LULLABIES',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Divider(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/tractor1.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                          radius: 30.0,
                          backgroundImage: AssetImage('images/cloud6.png'),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: new Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: Colors.pinkAccent.shade100,
                  boxShadow: [new BoxShadow(blurRadius: 40.9)],
                  borderRadius: new BorderRadius.vertical(
                    top: new Radius.elliptical(size.width, 40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MenuView()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Slider(
                      activeColor: Colors.pink,
                      inactiveColor: Colors.white,
                      value: _position.inSeconds.toDouble(),
                      min: 0.0,
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (double value) {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        if (playFlag == 1) {
                          setState(() {
                            icon:
                            Icon(Icons.pause);
                            advancedPlayer.pause();
                            playFlag = 2;
                          });
                        } else if (playFlag == 2) {
                          setState(() {
                            icon:
                            Icon(Icons.play_arrow);
                            advancedPlayer.resume();
                            playFlag = 1;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
