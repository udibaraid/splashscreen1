import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final lebarAll = MediaQuery.of(context).size.width;
    final tinggiAll = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        height: tinggiAll,
        width: lebarAll,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo_udibaraid.png",
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "SplashScreen",
              style: TextStyle(
                  fontFamily: 'OpenSans Bold',
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Made with ❤ by Budi Santoso",
              style: TextStyle(
                fontFamily: 'OpenSans Bold',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
