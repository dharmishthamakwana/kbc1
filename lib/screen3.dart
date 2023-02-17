import 'package:flutter/material.dart';

class w_ans extends StatefulWidget {
  const w_ans({Key? key}) : super(key: key);

  @override
  _w_ansState createState() => _w_ansState();
}

class _w_ansState extends State<w_ans> {
  // List l1 = ["assets/images/Lose.png"];
  @override
  Widget build(BuildContext context) {
    dynamic count = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Result",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink.shade900,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/Lose.png"),
              ),
              Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "Sorry \n\n"
                      "\t\t\t $count/10",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}