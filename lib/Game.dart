import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:piecemeal/piecemeal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Logic.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int player1Score = 0;
  int player2Score = 0;
  int draw = 0;

  //List<List<String>> pos = [[]];
  List<List<String>> pos = [
    [null, null, null],
    [null, null, null],
    [null, null, null],
  ];
  var player = "player1";
  bool state = true;
  String player1;
  String player2;
  String player3;
  String player4;
  String player5;
  String player6;
  String player7;
  String player8;
  String player9;

  int flag1 = 0,
      flag2 = 0,
      flag3 = 0,
      flag4 = 0,
      flag5 = 0,
      flag6 = 0,
      flag7 = 0,
      flag8 = 0,
      flag9 = 0;

  Logic logic = Logic();
  void Reset1() {
    setState(() {
      flag1 = 0;
      flag2 = 0;
      flag3 = 0;
      flag4 = 0;
      flag5 = 0;
      flag6 = 0;
      flag7 = 0;
      flag8 = 0;
      flag9 = 0;
      player1Score += 1;
      pos = [
        [null, null, null],
        [null, null, null],
        [null, null, null],
      ];
    });
  }

  void Reset2() {
    setState(() {
      flag1 = 0;
      flag2 = 0;
      flag3 = 0;
      flag4 = 0;
      flag5 = 0;
      flag6 = 0;
      flag7 = 0;
      flag8 = 0;
      flag9 = 0;
      player2Score += 1;
      pos = [
        [null, null, null],
        [null, null, null],
        [null, null, null],
      ];
    });
  }

  void Reset3() {
    setState(() {
      flag1 = 0;
      flag2 = 0;
      flag3 = 0;
      flag4 = 0;
      flag5 = 0;
      flag6 = 0;
      flag7 = 0;
      flag8 = 0;
      flag9 = 0;
      draw += 1;
      pos = [
        [null, null, null],
        [null, null, null],
        [null, null, null],
      ];
    });
  }

  void Check() {
    if (player == "player1") {
      if ((pos[0][0] == "player1" &&
              pos[0][1] == "player1" &&
              pos[0][2] == "player1") ||
          (pos[1][0] == "player1" &&
              pos[1][1] == "player1" &&
              pos[1][2] == "player1") ||
          (pos[2][0] == "player1" &&
              pos[2][1] == "player1" &&
              pos[2][2] == "player1") ||
          (pos[0][0] == "player1" &&
              pos[1][1] == "player1" &&
              pos[2][2] == "player1") ||
          (pos[0][2] == "player1" &&
              pos[1][1] == "player1" &&
              pos[2][0] == "player1") ||
          (pos[0][0] == "player1" &&
              pos[1][0] == "player1" &&
              pos[2][0] == "player1") ||
          (pos[0][1] == "player1" &&
              pos[1][1] == "player1" &&
              pos[2][1] == "player1") ||
          (pos[0][2] == "player1" &&
              pos[1][2] == "player1" &&
              pos[2][2] == "player1")) {
        Alert(context: context, title: "Result", desc: "Player 2 won").show();
        Reset1();
      } else if (flag1 == 1 &&
          flag2 == 1 &&
          flag3 == 1 &&
          flag4 == 1 &&
          flag5 == 1 &&
          flag6 == 1 &&
          flag7 == 1 &&
          flag8 == 1 &&
          flag9 == 1) {
        Alert(context: context, title: "Result", desc: "Draw").show();
        Reset3();
      }
    } else if (player == "player2") {
      if ((pos[0][0] == "player2" &&
              pos[0][1] == "player2" &&
              pos[0][2] == "player2") ||
          (pos[1][0] == "player2" &&
              pos[1][1] == "player2" &&
              pos[1][2] == "player2") ||
          (pos[2][0] == "player2" &&
              pos[2][1] == "player2" &&
              pos[2][2] == "player2") ||
          (pos[0][0] == "player2" &&
              pos[1][1] == "player2" &&
              pos[2][2] == "player2") ||
          (pos[0][2] == "player2" &&
              pos[1][1] == "player2" &&
              pos[2][0] == "player2") ||
          (pos[0][0] == "player2" &&
              pos[1][0] == "player2" &&
              pos[2][0] == "player2") ||
          (pos[0][1] == "player2" &&
              pos[1][1] == "player2" &&
              pos[2][1] == "player2") ||
          (pos[0][2] == "player2" &&
              pos[1][2] == "player2" &&
              pos[2][2] == "player2")) {
        Alert(context: context, title: "Result", desc: "Player 1 won").show();
        Reset2();
      } else if (flag1 == 1 &&
          flag2 == 1 &&
          flag3 == 1 &&
          flag4 == 1 &&
          flag5 == 1 &&
          flag6 == 1 &&
          flag7 == 1 &&
          flag8 == 1 &&
          flag9 == 1) {
        Alert(context: context, title: "Result", desc: "Draw").show();
        Reset3();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Feather.circle,
                        color: Color(0xFF39BCD4),
                        size: 50,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("$player1Score Wins"),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        MaterialCommunityIcons.window_close,
                        //Entypo.cross,
                        size: 50,
                        color: Color(0xFF3989D4),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("$player2Score Wins"),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Octicons.law,
                        size: 50,
                        color: Color(0xFFAAAAAA),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("$draw Draw"),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Table(
                border: TableBorder(
                    bottom: BorderSide(width: 0, color: Color(0xFFA4B5B8))),
                children: [
                  TableRow(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            //state = !state;
                            flag1 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player1 = player;
                            pos[0][0] = player1;
                            Check();
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          color: Colors.white10,
                          child: flag1 == 0 ? null : logic.choice1(player1),
                        ),
                      ),
                      Container(
                          height: 80,
                          child: VerticalDivider(color: Color(0xFFA4B5B8))),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag2 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player2 = player;
                            pos[0][1] = player2;
                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          color: Colors.white10,
                          child: flag2 == 0 ? null : logic.choice2(player2),
                        ),
                      ),
                      Container(
                        height: 80,
                        child: VerticalDivider(color: Color(0xFFA4B5B8)),
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag3 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player3 = player;
                            pos[0][2] = player3;

                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          color: Colors.white10,
                          child: flag3 == 0 ? null : logic.choice3(player3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Table(
                border: TableBorder(
                    bottom: BorderSide(width: 0, color: Color(0xFFA4B5B8))),
                children: [
                  TableRow(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag4 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player4 = player;
                            pos[1][0] = player4;
                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.white10,
                          child: flag4 == 0
                              ? null
                              : logic.choice4(player4), //choice(player),
                        ),
                      ),
                      Container(
                          height: 80,
                          child: VerticalDivider(color: Color(0xFFA4B5B8))),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag5 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player5 = player;
                            pos[1][1] = player5;
                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.white10,
                          child: flag5 == 0
                              ? null
                              : logic.choice5(player5), // choice(player),
                        ),
                      ),
                      Container(
                          height: 80,
                          child: VerticalDivider(color: Color(0xFFA4B5B8))),
                      GestureDetector(
                        // you have to  give the height to the container so thatthe tap able area can
                        // be actually tapped
                        //but won't that affect the size of the overall widget??
                        onTap: () {
                          setState(() {
                            flag6 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player6 = player;
                            pos[1][2] = player6;
                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          // i'm justhard coding this ,you may have to think about reponsivness of app
                          //on different screen sizes
                          //okay. thanks for the help. btw h
                          height: 60,
                          //color: Colors.black,
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.white10,
                          child: flag6 == 0
                              ? null
                              : logic.choice6(player6), //null //choice(player),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            //print("Hek");
                            flag7 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player7 = player;
                            pos[2][0] = player7;
                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.white10,
                          child: flag7 == 0
                              ? null
                              : logic.choice7(player7), //choice(player),
                        ),
                      ),
                      Container(
                          height: 80,
                          child: VerticalDivider(color: Color(0xFFA4B5B8))),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag8 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player8 = player;
                            pos[2][1] = player8;
                            Check();
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.white10,
                          child: flag8 == 0
                              ? null
                              : logic.choice8(player8), // choice(player),
                        ),
                      ),
                      Container(
                          height: 80,
                          child: VerticalDivider(color: Color(0xFFA4B5B8))),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag9 = 1;
                            player == "player1"
                                ? player = "player2"
                                : player = "player1";
                            player9 = player;
                            pos[2][2] = player9;

                            Check();
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.white10,
                          child: flag9 == 0
                              ? null
                              : logic.choice9(player9), // choice(player),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
//            Padding(
//              padding: const EdgeInsets.only(top: 50),
//              child: LiteRollingSwitch(
//                //initial value
//                value: state,
//                textOn: '',
//                textOff: '',
//                colorOn: Color(0xFF39BCD4), //Colors.greenAccent[700],
//                colorOff: Color(0xFF3989D4), //Colors.redAccent[700],
//                iconOn: Feather.circle,
//                iconOff: MaterialCommunityIcons.window_close,
//                textSize: 18.0,
////                onChanged: (bool state) {
////                  setState(() {
////                    this.state = state;
////                  });
////                  //Use it to manage the different states
////                  //print('Current State of SWITCH IS: $state');
////                },
//              ),
//            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Color(0xFFAAAAAA),
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        flag1 = 0;
                        flag2 = 0;
                        flag3 = 0;
                        flag4 = 0;
                        flag5 = 0;
                        flag6 = 0;
                        flag7 = 0;
                        flag8 = 0;
                        flag9 = 0;
                        player1Score = 0;
                        player2Score = 0;
                        draw = 0;
                        pos = [
                          [null, null, null],
                          [null, null, null],
                          [null, null, null],
                        ];
                      });
                    },
                    color: Colors.white,
                    iconSize: 40,
                    icon: Icon(
                      Icons.refresh,
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(10),
                  height: 50,
                  width: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,
                    child: Center(child: Text(player)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
