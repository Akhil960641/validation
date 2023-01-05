import 'package:flutter/material.dart';
import 'package:validation/SecondPage.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  State<Validation> createState() => _ValidationState();
}
final fkey=GlobalKey<FormState>();
TextEditingController firstTextController = TextEditingController();
TextEditingController secondTextController = TextEditingController();

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Form(key: fkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: size.width * .88,



              child: TextFormField(
                style: TextStyle(color: Colors.black),
                validator: (value){
                  if(value!.isEmpty){
                    return 'No data';
                  }

                },
                controller: firstTextController,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Text',
                  hintStyle: TextStyle(color:Colors.black),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: size.width * .88,
              child: TextFormField(

                style: TextStyle(color: Colors.black),
                validator: (value){
                  if(value!.isEmpty){
                    return 'no data';
                  }

                },
                controller: secondTextController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Text',
                  hintStyle: TextStyle(color:Colors.black),

                ),
              ),
            ),

          ),
          SizedBox(
            height: size.height * .05,
          ),
          InkWell(
            onTap: () {

              if (fkey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(
                  firstText: firstTextController.text ,
                  secondText: secondTextController.text,
                ),));
              }
            },
            child: Container(
              width: size.width * .3,
              height: size.height * .06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 10,spreadRadius: 1)],

                color: Colors.white,
              ),
              // color: Colors.lightBlueAccent,
              child: Center(
                child: Text(
                  'Click',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
          ),


        ],
      ),
      ),
    );
  }
}
