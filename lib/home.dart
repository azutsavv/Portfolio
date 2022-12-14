import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          itemBuilder: (context) => [
            PopupMenuItem(
                child: TextButton(
              child: Text('About Me'),
              onPressed: () {
                Navigator.pushNamed(context, 'about');
              },
            ))
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 10,
        cornerRadius: 36,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.09, 0.6, 0.6],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: SafeArea(
          child: Container(
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
                          Colors.transparent
                        ]).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/final port.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.6),
                  child: Column(
                    children: [
                      Text("Utsav Singh ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 23, 140, 167),
                              fontSize: 35,
                              fontWeight: FontWeight.w800)),
                      Text("SOFTWARE DEVELOPER",
                          style: TextStyle(
                              color: Color.fromARGB(255, 23, 140, 167),
                              fontSize: 25,
                              fontWeight: FontWeight.w800))
                    ],
                  ))
            ]),
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 30, right: 10, top: 20),
            height: 500,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: [
                    Row(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text("Projects"),
                        SizedBox(width: 50),
                        Text(
                          "4",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text("Languages"),
                        SizedBox(width: 50),
                        Text(
                          "2",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text("Messages"),
                      ],
                    ),
                  ]),
                  SizedBox(height: 30),
                  Text(
                    "Specilized in",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 105,
                            height: 115,
                            child: Card(
                              color: Colors.blueGrey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.android,
                                    color: Colors.grey[350],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "ANDROID",
                                    style: TextStyle(
                                        color: Colors.grey[350], fontSize: 16),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          Container(
                            width: 105,
                            height: 115,
                            child: Card(
                              color: Colors.blueGrey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "C++",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey[350]),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "CPP",
                                    style: TextStyle(
                                        color: Colors.grey[350], fontSize: 16),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          Container(
                            width: 105,
                            height: 115,
                            child: Card(
                              color: Colors.blueGrey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "C P",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey[350]),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "problem",
                                    style: TextStyle(
                                        color: Colors.grey[350], fontSize: 16),
                                  ),
                                ],
                              )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 105,
                            height: 115,
                            child: Card(
                              color: Colors.blueGrey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.squareGithub,
                                    color: Colors.grey[350],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "GITHUB",
                                    style: TextStyle(
                                        color: Colors.grey[350], fontSize: 16),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          Container(
                            width: 105,
                            height: 115,
                            child: Card(
                              color: Colors.blueGrey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.githubAlt,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "GIT",
                                    style: TextStyle(
                                        color: Colors.grey[350], fontSize: 16),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          Container(
                            width: 105,
                            height: 115,
                            child: Card(
                              color: Colors.blueGrey[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.brain,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "DART",
                                    style: TextStyle(
                                        color: Colors.grey[350], fontSize: 16),
                                  ),
                                ],
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
