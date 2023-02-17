import 'package:flutter/material.dart';

class Ans extends StatefulWidget {
  const Ans({Key? key}) : super(key: key);

  @override
  _AnsState createState() => _AnsState();
}

class _AnsState extends State<Ans> {
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
                child: Image.asset("assets/images/Wining.png"),
              ),
              Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "You Are Winner \n\n"
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