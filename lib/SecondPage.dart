import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  Secondpage({Key? key, required this.firstText, required this.secondText})
      : super(key: key);
  String firstText;
  String secondText;
  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * .88,
               height: size.height * .88,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 10,
                          spreadRadius: 1)
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(widget.firstText, style: TextStyle(fontSize: 30)),
                      SizedBox(
                        height: size.height * .08,
                      ),
                      Text(widget.secondText, style: TextStyle(fontSize: 30)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
