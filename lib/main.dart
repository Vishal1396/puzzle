import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: puzzle(),
  ));
}

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  _puzzleState createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  String r = "";
  List ll = ["1", "2", "3", "4", "5", "", "7", "8", "6"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    random();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PUZZLE"),
      ),
      body: Container(
        padding: EdgeInsets.all(1),
        height: 770,
        width: 480,
        decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.black),
            color: Colors.brown),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 170,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20),
                          )),
                      onPressed: () {
                        setState(() {
                          random();
                          r = "";
                        });
                      },
                      child: Text(
                        "RESTART",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown),
                      )),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(1),
              height: 390,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black),
                  color: Colors.brown),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 128,
                        width: 123,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff123456),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[1] == "") {
                                  ll[1] = ll[0];
                                  ll[0] = "";
                                } else if (ll[3] == "") {
                                  ll[3] = ll[0];
                                  ll[0] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[0],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                      SizedBox(
                        height: 128,
                        width: 123,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff2f051c),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[0] == "") {
                                  ll[0] = ll[1];
                                  ll[1] = "";
                                } else if (ll[4] == "") {
                                  ll[4] = ll[1];
                                  ll[1] = "";
                                } else if (ll[2] == "") {
                                  ll[2] = ll[1];
                                  ll[1] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[1],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                      SizedBox(
                        height: 128,
                        width: 122,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff3270d3),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[1] == "") {
                                  ll[1] = ll[2];
                                  ll[2] = "";
                                } else if (ll[5] == "") {
                                  ll[5] = ll[2];
                                  ll[2] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[2],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 128,
                        width: 123,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xfff1e360),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[0] == "") {
                                  ll[0] = ll[3];
                                  ll[3] = "";
                                } else if (ll[4] == "") {
                                  ll[4] = ll[3];
                                  ll[3] = "";
                                } else if (ll[6] == "") {
                                  ll[6] = ll[3];
                                  ll[3] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[3],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                      SizedBox(
                        height: 128,
                        width: 123,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffa230f2),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[1] == "") {
                                  ll[1] = ll[4];
                                  ll[4] = "";
                                } else if (ll[3] == "") {
                                  ll[3] = ll[4];
                                  ll[4] = "";
                                } else if (ll[5] == "") {
                                  ll[5] = ll[4];
                                  ll[4] = "";
                                } else if (ll[7] == "") {
                                  ll[7] = ll[4];
                                  ll[4] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[4],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                      SizedBox(
                        height: 128,
                        width: 122,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0c4545),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[2] == "") {
                                  ll[2] = ll[5];
                                  ll[5] = "";
                                } else if (ll[4] == "") {
                                  ll[4] = ll[5];
                                  ll[5] = "";
                                } else if (ll[8] == "") {
                                  ll[8] = ll[5];
                                  ll[5] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[5],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 122,
                        width: 123,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff28440a),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[3] == "") {
                                  ll[3] = ll[6];
                                  ll[6] = "";
                                } else if (ll[7] == "") {
                                  ll[7] = ll[6];
                                  ll[6] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[6],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                      SizedBox(
                        height: 122,
                        width: 123,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffb16810),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[8] == "") {
                                  ll[8] = ll[7];
                                  ll[7] = "";
                                } else if (ll[4] == "") {
                                  ll[4] = ll[7];
                                  ll[7] = "";
                                } else if (ll[6] == "") {
                                  ll[6] = ll[7];
                                  ll[7] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[7],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                      SizedBox(
                        height: 122,
                        width: 122,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff6c4db3),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              setState(() {
                                if (ll[5] == "") {
                                  ll[5] = ll[8];
                                  ll[8] = "";
                                } else if (ll[7] == "") {
                                  ll[7] = ll[8];
                                  ll[8] = "";
                                }
                                win();
                              });
                            },
                            child: Text(
                              ll[8],
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    setState(() {
                      win();
                    });
                  },
                  child: Text(
                    r,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void win() {
    setState(() {
      if (ll[0] == "1" &&
          ll[1] == "2" &&
          ll[2] == "3" &&
          ll[3] == "4" &&
          ll[4] == "5" &&
          ll[5] == "6" &&
          ll[6] == "7" &&
          ll[7] == "8" &&
          ll[8] == "") {
        r = "You Are Win.....";
      }
    });
  }

  void random() {
    setState(() {
      ll.shuffle();
    });
  }
}
