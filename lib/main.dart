// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:pdf/pdf.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

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
                padding: const EdgeInsets.only(top: 50, right: 110),
                child: Text(
                  "Select course",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 160),
                  child: Text(
                    "Keep Growing",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.black),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 40),
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
                          Navigator.push(
                              context,
                              (MaterialPageRoute(
                                  builder: (context) => year())));
                        },
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 55),
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
                      padding: const EdgeInsets.only(top: 10, left: 40),
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
                        padding: const EdgeInsets.only(top: 20, left: 50),
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

class subject extends StatelessWidget {
  const subject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(132, 83, 63, 236),
          toolbarHeight: 110,
          title: Text(
            "Select subject",
            style: TextStyle(fontSize: 22),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 80),
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 68),
                              child: Text("Programming in c++",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) => math())));
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 5),
                      child: SvgPicture.asset(
                        "lib/asset/images/3.svg",
                        width: 0,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 75),
                      child: Container(
                        child: TextButton(
                          child: Text("Programming in C++ (hindi)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => chindi())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240, top: 30),
                      child: SvgPicture.asset(
                        "lib/asset/images/3.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 108),
                        child: Container(
                          child: Text("mathematics of computer science",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            (MaterialPageRoute(builder: (context) => cpp())));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 40),
                      child: SvgPicture.asset(
                        "lib/asset/images/Group 8.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 100),
                      child: Container(
                        child: TextButton(
                          child: Text("Data Base menegment system",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => dbms())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 35),
                      child: SvgPicture.asset(
                        "lib/asset/images/mysql-original-wordmark.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 75),
                      child: Container(
                        child: TextButton(
                          child: Text("Computer fundamentel",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => cf())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 270, top: 35),
                      child: SvgPicture.asset(
                        "lib/asset/images/Windows 11.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 75),
                      child: Container(
                        child: TextButton(
                          child: const Text("Programming fundamentel",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => pf())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240, top: 35),
                      child: SvgPicture.asset(
                        "lib/asset/images/ClickUp.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    TextButton(
                      child: const Padding(
                        padding: EdgeInsets.only(top: 35, left: 75),
                        child: Text("Computer Network",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            (MaterialPageRoute(builder: (context) => cn())));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 260, top: 30),
                      child: SvgPicture.asset(
                        "lib/asset/images/electron-original.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

class cpp extends StatefulWidget {
  const cpp({super.key});

  @override
  State<cpp> createState() => _cppState();
}

class _cppState extends State<cpp> {
  String url =
      "https://docs.google.com/document/d/1MJ3_1TCtU0V9GqSwc4pYt1Iw_bOZUV1DKYY8ho53cws/edit?usp=sharing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:
            SfPdfViewer.asset("lib/asset/images/Mathematics -1 (BCA-102).pdf"),
      ),
    );
  }
}

class math extends StatefulWidget {
  const math({super.key});

  @override
  State<math> createState() => _mathState();
}

class _mathState extends State<math> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SfPdfViewer.asset(
            "lib/asset/images/CPlusPlusNotesForProfessionals.pdf"),
      ),
    );
  }
}

class chindi extends StatefulWidget {
  const chindi({super.key});

  @override
  State<chindi> createState() => _chindiState();
}

class _chindiState extends State<chindi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SfPdfViewer.asset("lib/asset/images/c++-hindi.pdf"),
      ),
    );
  }
}

class dbms extends StatefulWidget {
  const dbms({super.key});

  @override
  State<dbms> createState() => _dbmsState();
}

class _dbmsState extends State<dbms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SfPdfViewer.asset("lib/asset/images/1592408067.pdf"),
      ),
    );
  }
}

class cf extends StatefulWidget {
  const cf({super.key});

  @override
  State<cf> createState() => _cfState();
}

class _cfState extends State<cf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SfPdfViewer.asset(
            "lib/asset/images/Fundamentals-of-Computer-and-IT-UGCA-1902-1.pdf"),
      ),
    );
  }
}

class pf extends StatefulWidget {
  const pf({super.key});

  @override
  State<pf> createState() => _pfState();
}

class _pfState extends State<pf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SfPdfViewer.asset(
            "lib/asset/images/BCA-1st-Programming-IN-Caaa.pdf"),
      ),
    );
  }
}

class cn extends StatefulWidget {
  const cn({super.key});

  @override
  State<cn> createState() => _cnState();
}

class _cnState extends State<cn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:
            SfPdfViewer.asset("lib/asset/images/COMPUTER NETWORKS NOTES.pdf"),
      ),
    );
  }
}

class year extends StatelessWidget {
  const year({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://bard.google.com/chat');
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(),

        // drawer: Drawer(),
        body: Column(children: [
          Container(
            height: 400,
            width: 400,
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                ),
                child: SvgPicture.asset(
                  "lib/Business Plan.svg",
                  height: 400,
                  width: 400,
                )),
          ),
          Column(children: [
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       TextButton(
            //         child: Stack(
            //           children: [
            //             Padding(
            //                 padding:
            //                     const EdgeInsets.only(bottom: 90, left: 20),
            //                 child: Container(
            //                     width: 120,
            //                     height: 100,
            //                     decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(15),
            //                         color:
            //                             Color.fromARGB(255, 212, 192, 233)))),
            //             Row(
            //               children: [
            //                 Padding(
            //                   padding:
            //                       const EdgeInsets.only(top: 10, left: 30),
            //                   child: SvgPicture.asset(
            //                     "lib/asset/images/Group 2134.svg",
            //                     height: 70,
            //                     width: 70,
            //                   ),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //         onPressed: () {
            //           Navigator.push(
            //               context,
            //               (MaterialPageRoute(
            //                   builder: (context) => subject())));
            //         },
            //       ),
            //       TextButton(
            //         child: Stack(
            //           children: [
            //             Padding(
            //                 padding:
            //                     const EdgeInsets.only(bottom: 90, left: 10),
            //                 child: Container(
            //                     width: 120,
            //                     height: 100,
            //                     decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(15),
            //                         color:
            //                             Color.fromARGB(255, 126, 164, 229)))),
            //             Row(
            //               children: [
            //                 Padding(
            //                   padding:
            //                       const EdgeInsets.only(top: 10, left: 30),
            //                   child: SvgPicture.asset(
            //                     "lib/asset/images/Group 2134.svg",
            //                     height: 70,
            //                     width: 70,
            //                   ),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //         onPressed: () {},
            //       ),
            //       TextButton(
            //         child: Stack(
            //           children: [
            //             Padding(
            //                 padding:
            //                     const EdgeInsets.only(bottom: 90, left: 10),
            //                 child: Container(
            //                     width: 120,
            //                     height: 100,
            //                     decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(15),
            //                         color:
            //                             Color.fromARGB(255, 126, 164, 229)))),
            //             Row(
            //               children: [
            //                 Padding(
            //                   padding:
            //                       const EdgeInsets.only(top: 10, left: 30),
            //                   child: SvgPicture.asset(
            //                     "lib/asset/images/Group 2134.svg",
            //                     height: 70,
            //                     width: 70,
            //                   ),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //         onPressed: () {},
            //       ),
            //     ],
            //   ),
            // ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 0),
                      child: TextButton(
                        child: Container(
                          width: 114,
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueAccent),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0, left: 8, right: 8),
                              child: SvgPicture.asset(
                                "lib/asset/images/Group 2135.svg",
                                width: 100,
                                height: 30,
                              )),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              (MaterialPageRoute(
                                  builder: (context) => subject())));
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 0),
                          child: TextButton(
                            child: Container(
                              width: 114,
                              height: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blueAccent),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 8, right: 8),
                                  child: SvgPicture.asset(
                                    "lib/asset/images/Group 2136.svg",
                                    width: 100,
                                    height: 30,
                                  )),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) => subject2())));
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: TextButton(
                                child: Container(
                                  width: 114,
                                  height: 56,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.blueAccent),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, left: 8, right: 8),
                                      child: SvgPicture.asset(
                                        "lib/asset/images/Group 2137.svg",
                                        width: 100,
                                        height: 30,
                                      )),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            height: 63,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(255, 86, 167, 244),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 8, right: 32),
                                child: SvgPicture.asset(
                                  "lib/asset/images/Group 2150.svg",
                                  width: 90,
                                  height: 20,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: 63,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 86, 167, 244),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, left: 8, right: 80),
                                    child: SvgPicture.asset(
                                      "lib/asset/images/Group 2152.svg",
                                      width: 100,
                                      height: 30,
                                    )),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: TextButton(
                                    child: Container(
                                      height: 63,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color:
                                            Color.fromARGB(255, 86, 167, 244),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 0, right: 80),
                                          child: SvgPicture.asset(
                                            "lib/asset/images/Group 2144.svg",
                                            width: 100,
                                            height: 30,
                                          )),
                                    ),
                                    onPressed: () {
                                      launchUrl(_url);
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ])
        ]));
  }
}

class subject2 extends StatelessWidget {
  const subject2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(132, 83, 63, 236),
          toolbarHeight: 110,
          title: Text(
            "Select subject",
            style: TextStyle(fontSize: 22),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 100),
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 68),
                              child: Text("Java programming",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) => math())));
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 25),
                      child: SvgPicture.asset(
                        "lib/asset/images/23.svg",
                        width: 0,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 80),
                      child: Container(
                        child: TextButton(
                          child: Text("Java Programming hindi ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => chindi())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 30),
                      child: SvgPicture.asset(
                        "lib/asset/images/23.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 45, left: 70),
                        child: Container(
                          child: Text("Python programming",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            (MaterialPageRoute(builder: (context) => cpp())));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230, top: 40),
                      child: SvgPicture.asset(
                        "lib/asset/images/28.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 73),
                      child: Container(
                        child: TextButton(
                          child: Text("Internet programming",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => dbms())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230, top: 35),
                      child: SvgPicture.asset(
                        "lib/asset/images/5.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 73),
                      child: Container(
                        child: TextButton(
                          child: Text("Operating System",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => cf())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230, top: 35),
                      child: SvgPicture.asset(
                        "lib/asset/images/Microsoft.svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 80),
                      child: Container(
                        child: TextButton(
                          child: const Text("Coumputer Organistion",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => pf())));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 35),
                      child: SvgPicture.asset(
                        "lib/asset/images/Group 1 (1).svg",
                        width: 50,
                        height: 53,
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    TextButton(
                      child: const Padding(
                        padding: EdgeInsets.only(top: 40, left: 75),
                        child: Text("Cloud Computing",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            (MaterialPageRoute(builder: (context) => cn())));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220, top: 40),
                      child: SvgPicture.asset(
                        "lib/asset/images/g710.svg",
                        width: 40,
                        height: 43,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
