
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Material App',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? usersTurn = true;
  bool? a; // null : not checked
  Widget? aW;
  bool? b; // true : user
  Widget? bW;
  bool? c; // false : AI
  Widget? cW;
  bool? d;
  Widget? dW;
  bool? e;
  Widget? eW;
  bool? f;
  Widget? fW;
  bool? g;
  Widget? gW;
  bool? h;
  Widget? hW;
  bool? i;
  Widget? iW;
  Widget selectedBoxByUser = const Center(
    child: Text(
      "X",
      style: TextStyle(fontSize: 50),
    ),
  );
  Widget selectedBoxByAI = const Center(
    child: Text(
      "O",
      style: TextStyle(fontSize: 50),
    ),
  );
  @override
  Widget build(BuildContext context) {
    winner();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (a == null) {
                          a = true;
                          aW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;

                          if (areThereAnyNull()) {
                            usersTurn = false;
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: aW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (b == null) {
                          b = true;
                          bW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: bW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (c == null) {
                          c = true;

                          cW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: cW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (d == null) {
                          d = true;
                          dW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: dW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (e == null) {
                          e = true;
                          eW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: eW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (f == null) {
                          f = true;
                          fW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }

                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: fW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (g == null) {
                          g = true;
                          gW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: gW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (h == null) {
                          h = true;
                          hW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: hW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usersTurn == true) {
                        if (i == null) {
                          i = true;
                          iW = const Center(
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 50),
                            ),
                          );
                          setState(() {});
                          usersTurn = false;
                          if (areThereAnyNull()) {
                            selectBoxWithAI();
                            usersTurn = true;
                          }
                        }
                      }
                      if (winner() != null) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(winner() == true
                                    ? "You Win"
                                    : "AI Beat You"),
                                content: Text(winner() == true
                                    ? "You Beat AI. You are a genius person."
                                    : "AI Beat You. But never give up. Try Again."),
                                actions: [
                                  CupertinoButton(
                                      child: Text(winner() == true
                                          ? "I will do this again"
                                          : "Can I try again?"),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      } else if (areThereAnyNull() == false) {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text("Draw"),
                                content: Text("There's no winner."),
                                actions: [
                                  CupertinoButton(
                                      child: Text("I will win."),
                                      onPressed: () {
                                        restartGame();
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: iW,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(color: Colors.black, width: 4))),
                    ),
                  )
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              restartGame();
            },
            child: Text("Restart"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
          )
        ],
      ),
    );
  }

  void printAll() {
    print(
        "a : $a , b : $b , c : $c , d : $d , e : $e , f : $f , g : $g , h : $h , i : $i ");
  }

  bool areThereAnyNull() {
    int howManyNull = 0;
    if (a == null) {
      howManyNull++;
    } else if (b == null) {
      howManyNull++;
    } else if (c == null) {
      howManyNull++;
    } else if (d == null) {
      howManyNull++;
    } else if (e == null) {
      howManyNull++;
    } else if (f == null) {
      howManyNull++;
    } else if (g == null) {
      howManyNull++;
    } else if (h == null) {
      howManyNull++;
    } else if (i == null) {
      howManyNull++;
    }
    return howManyNull > 0;
  }

  void selectBoxWithAI() {
    if (a == b && a == true && c == null) {
      print("girdi");
      c = false;
      cW = selectedBoxByAI;
      setState(() {});
    } else if (b == c && b == true && a == null) {
      print("girdi");
      a = false;
      aW = selectedBoxByAI;
      setState(() {});
    } else if (a == c && a == true && b == null) {
      print("girdi");
      b = false;
      bW = selectedBoxByAI;
      setState(() {});
    } else if (d == e && d == true && f == null) {
      print("girdi");
      f = false;
      fW = selectedBoxByAI;
      setState(() {});
    } else if (e == f && e == true && d == null) {
      print("girdi");
      d = false;
      dW = selectedBoxByAI;
      setState(() {});
    } else if (d == f && d == true && e == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (g == h && g == true && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (h == i && h == true && g == null) {
      print("girdi");
      g = false;
      gW = selectedBoxByAI;
      setState(() {});
    } else if (g == i && i == true && h == null) {
      print("girdi");
      h = false;
      hW = selectedBoxByAI;
      setState(() {});
    } else if (a == d && a == true && g == null) {
      print("girdi");
      g = false;
      gW = selectedBoxByAI;
      setState(() {});
    } else if (d == g && d == true && a == null) {
      print("girdi");
      a = false;
      aW = selectedBoxByAI;
      setState(() {});
    } else if (a == g && a == true && d == null) {
      print("girdi");
      d = false;
      dW = selectedBoxByAI;
      setState(() {});
    } else if (b == e && b == true && h == null) {
      print("girdi");
      h = false;
      hW = selectedBoxByAI;
      setState(() {});
    } else if (e == h && e == true && b == null) {
      print("girdi");
      b = false;
      bW = selectedBoxByAI;
      setState(() {});
    } else if (b == h && b == true && h == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (c == f && c == true && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (f == i && f == true && c == null) {
      print("girdi");
      c = false;
      cW = selectedBoxByAI;
      setState(() {});
    } else if (c == i && c == true && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (c == e && c == true && g == null) {
      print("girdi");
      g = false;
      gW = selectedBoxByAI;
      setState(() {});
    } else if (c == g && c == true && e == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (g == e && g == true && c == null) {
      print("girdi");
      c = false;
      cW = selectedBoxByAI;
      setState(() {});
    } else if (a == i && a == true && e == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (a == e && a == true && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (e == i && e == true && a == null) {
      print("girdi");
      a = false;
      aW = selectedBoxByAI;
      setState(() {});
    } else if (a == b && a == false && c == null) {
      print("girdi");
      c = false;
      cW = selectedBoxByAI;
      setState(() {});
    } else if (b == c && b == false && a == null) {
      print("girdi");
      a = false;
      aW = selectedBoxByAI;
      setState(() {});
    } else if (a == c && a == false && b == null) {
      print("girdi");
      b = false;
      bW = selectedBoxByAI;
      setState(() {});
    } else if (d == e && d == false && f == null) {
      print("girdi");
      f = false;
      fW = selectedBoxByAI;
      setState(() {});
    } else if (e == f && e == false && d == null) {
      print("girdi");
      d = false;
      dW = selectedBoxByAI;
      setState(() {});
    } else if (d == f && d == false && e == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (g == h && g == false && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (h == i && h == false && g == null) {
      print("girdi");
      g = false;
      gW = selectedBoxByAI;
      setState(() {});
    } else if (g == i && i == false && h == null) {
      print("girdi");
      h = false;
      hW = selectedBoxByAI;
      setState(() {});
    } else if (a == d && a == false && g == null) {
      print("girdi");
      g = false;
      gW = selectedBoxByAI;
      setState(() {});
    } else if (d == g && d == false && a == null) {
      print("girdi");
      a = false;
      aW = selectedBoxByAI;
      setState(() {});
    } else if (a == g && a == false && d == null) {
      print("girdi");
      d = false;
      dW = selectedBoxByAI;
      setState(() {});
    } else if (b == e && b == false && h == null) {
      print("girdi");
      h = false;
      hW = selectedBoxByAI;
      setState(() {});
    } else if (e == h && e == false && b == null) {
      print("girdi");
      b = false;
      bW = selectedBoxByAI;
      setState(() {});
    } else if (b == h && b == false && h == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (c == f && c == false && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (f == i && f == false && c == null) {
      print("girdi");
      c = false;
      cW = selectedBoxByAI;
      setState(() {});
    } else if (c == i && c == false && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (c == e && c == false && g == null) {
      print("girdi");
      g = false;
      gW = selectedBoxByAI;
      setState(() {});
    } else if (c == g && c == false && e == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (g == e && g == false && c == null) {
      print("girdi");
      c = false;
      cW = selectedBoxByAI;
      setState(() {});
    } else if (a == i && a == false && e == null) {
      print("girdi");
      e = false;
      eW = selectedBoxByAI;
      setState(() {});
    } else if (a == e && a == false && i == null) {
      print("girdi");
      i = false;
      iW = selectedBoxByAI;
      setState(() {});
    } else if (e == i && e == false && a == null) {
      print("girdi");
      a = false;
      aW = selectedBoxByAI;
      setState(() {});
    } else {
      while (true) {
        int randomNum = Random().nextInt(8);
        if (randomNum == 0 && a == null) {
          a = false;
          aW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 1 && b == null) {
          b = false;
          bW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 2 && c == null) {
          c = false;
          cW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 3 && d == null) {
          d = false;
          dW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 4 && e == null) {
          e = false;
          eW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 5 && f == null) {
          f = false;
          fW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 6 && g == null) {
          g = false;
          gW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 7 && h == null) {
          h = false;
          hW = selectedBoxByAI;
          setState(() {});
          break;
        } else if (randomNum == 8 && i == null) {
          i = false;
          iW = selectedBoxByAI;
          setState(() {});
          break;
        }
      }
    }
  }

  bool? winner() {
    bool? whowinner;
    // user : true
    // AI : false
    if (a == b && b == c) {
      a != null ? whowinner = a : null;
      debugPrint("abc");
    } else if (d == e && e == f) {
      d != null ? whowinner = d : null;
      debugPrint("def");
    } else if (g == h && h == i) {
      g != null ? whowinner = g : null;
      debugPrint("ghi");
    } else if (a == e && e == i) {
      a != null ? whowinner = a : null;
      debugPrint("aei");
    } else if (c == e && e == g) {
      a != null ? whowinner = c : null;
      debugPrint("aei");
    } else if (a == d && d == g) {
      a != null ? whowinner = a : null;
      debugPrint("abc");
    } else if (b == e && e == h) {
      b != null ? whowinner = b : null;
      debugPrint("def");
    } else if (c == f && f == i) {
      c != null ? whowinner = c : null;
      debugPrint("ghi");
    } else {
      whowinner = null;
      debugPrint("null");
    }
    return whowinner;
  }

  void restartGame() {
    a = null;
    b = null;
    c = null;
    d = null;
    e = null;
    f = null;
    g = null;
    h = null;
    i = null;
    aW = null;
    bW = null;
    cW = null;
    dW = null;
    eW = null;
    fW = null;
    gW = null;
    hW = null;
    iW = null;
    usersTurn = true;
    setState(() {});
  }
}
