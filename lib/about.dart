

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class Myabout extends StatefulWidget {
  const Myabout({super.key});

  @override
  State<Myabout> createState() => _MyaboutState();
}

class _MyaboutState extends State<Myabout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 0),
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Colors.transparent
                    ])
                    .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
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
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
            child: Column(children: [
              Text(
                "Helo I'm",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Utsav Singh ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 35,
                      fontWeight: FontWeight.w800)),
              Text("ANDROID DEVELOPER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.w800)),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.instagram),
                    color: Colors.white,
                    onPressed: () {
                      launchUrlString('https://www.instagram.com/az_utsav');
                     
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrlString('https://github.com/azutsavv');
                    },
                    icon: Icon(FontAwesomeIcons.github),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrlString('https://www.linkedin.com/in/utsav-singh-1206ba226/');
                    },
                    icon: Icon(FontAwesomeIcons.linkedin),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrlString('https://mail.google.com/mail/u/0/#inbox');
                    },
                    icon: Icon(FontAwesomeIcons.envelope),
                    color: Colors.white,
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
