// import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Forsy",
    home: MyApp(),
    // splsescreen(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 248, 248, 248),
          body: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 140),
                                        child: Image.asset(
                                          "lib/asset/images/Learning-cuate.png",
                                          width: 340,
                                          height: 340,
                                        ),
                                      )
                                    ],
                                  ),
                                  //     Column(
                                  //       children: [
                                  //         Padding(
                                  //           padding: const EdgeInsets.only(
                                  //               top: 180, left: 0),
                                  //           child: Text("Get Started",
                                  //               style: TextStyle(
                                  //                 fontSize: 16,
                                  //                 fontWeight: FontWeight.w600,
                                  //               )),
                                  //         )
                                  //       ],
                                  //     )
                                  //   ],
                                  // ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 60, left: 0),
                                    child: Text("Welcome to Forsy",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 50),
                                    child: Text(
                                        "Grow and Bright your furture with Forsy get computer science students Notes & PYQs",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.blueAccent,
                          //<-- SEE HERE
                          side:
                              BorderSide(color: Colors.blueAccent, width: 1.0),
                          padding: EdgeInsets.all(5)),
                      child: Container(
                        height: 45,
                        width: 320,
                        color: Colors.blueAccent,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 110),
                          child: Text(
                            "Get started",
                            style: TextStyle(
                              fontSize: 18,
                              backgroundColor: Colors.blueAccent,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            (MaterialPageRoute(
                                builder: (context) => Firstscreen())));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 233, 239, 251),
          // body: Padding(
          //   padding: const EdgeInsets.only(top: 180, left: 40),
          //   child: Container(
          //     height: 132,
          //     width: 280,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.only(
          //           top: 10, left: 10, right: 160, bottom: 10),
          //       child: Container(
          //         height: 112,
          //         width: 60,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: Color(0xffdde1ff)),
          //         // child: Container(
          //         child: Container(
          //           margin: EdgeInsets.only(left: 220),
          //           child: Text(
          //             "BCA",
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 120),
                child: Text(
                  "Select course",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 170),
                  child: Text(
                    "Keep Growing",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 10),
                      child: TextButton(
                        child: Container(
                          height: 132,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // child: Container(
                          //   height: 150,
                          //   width: 180,
                          //   color: Colors.white,
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 160, top: 45),
                            child: Text(
                              "BCA",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        onPressed: () {
                          print("hello");
                        },
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 30),
                        child: Container(
                            height: 112,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffff9f91)),
                            child: SvgPicture.asset(
                                "lib/asset/images/Group 64.svg")),
                      ),
                    ])
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Container(
                        height: 132,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // child: Container(
                        //   height: 150,
                        //   width: 180,
                        //   color: Colors.white,
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 160, top: 45),
                          child: Text(
                            "MCA",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 50),
                        child: Container(
                            height: 112,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffdde1ff)),
                            child: SvgPicture.asset(
                                "lib/asset/images/Group 65.svg")),
                      ),
                    ])
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40),
                      child: Container(
                        height: 132,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // child: Container(
                        //   height: 150,
                        //   width: 180,
                        //   color: Colors.white,
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 160, top: 45),
                          child: Text(
                            "M.sc",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 50),
                        child: Container(
                            height: 112,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffdde1ff)),
                            child: SvgPicture.asset(
                                "lib/asset/images/Group 64.svg")),
                      ),
                    ])
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40),
                      child: Container(
                        height: 132,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // child: Container(
                        //   height: 150,
                        //   width: 180,
                        //   color: Colors.white,
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 160, top: 45),
                          child: Text(
                            "B.tec",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 50),
                        child: Container(
                            height: 112,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffdde1ff)),
                            child: SvgPicture.asset(
                                "lib/asset/images/Group 44.svg")),
                      ),
                    ])
                  ],
                ),
                Stack(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15, left: 0),
                      child: Container(
                        height: 64,
                        width: 400,
                        color: Colors.white,
                        child: SvgPicture.asset(
                          "lib/asset/images/Group 80.svg",
                        ),
                      ))
                ])
              ]),
            ],
          ),
        ));
  }
}
    
  


// class splsescreen extends StatefulWidget {
//   const splsescreen({super.key});

//   @override
//   _splsescreenState createState() => _splsescreenState();
// }

// class _splsescreenState extends State<splsescreen> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(
//         Duration(seconds: 4),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => MyApp())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(48, 69, 255, 100),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 280),
//             child: Image.asset(
//               "lib/asset/images/Group 2122.png",
//               width: 300,
//               height: 280,
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
