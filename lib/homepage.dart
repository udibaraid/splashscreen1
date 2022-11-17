import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Selamat datang",
                  style: TextStyle(
                      fontFamily: 'OpenSans Bold',
                      color: Colors.white,
                      fontSize: 20)),
              Text(
                "Contoh Splash Screen",
                style: TextStyle(
                    fontFamily: 'OpenSans Bold',
                    color: Colors.white,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
