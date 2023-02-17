import 'dart:ui';

import 'package:flutter/material.dart';

class Kbc extends StatefulWidget {
  const Kbc({Key? key}) : super(key: key);

  @override
  State<Kbc> createState() => _KbcState();
}

class _KbcState extends State<Kbc> {
  int i = 0;
  List qu = [
    "1. In Film 'OMG Oh my god' KanjI Bhai fiald a case against whome forthe damage of his shope due to an earthquake ?",
    "2. What is the new name of the Hydrabad franchise that would raplace Deccan Changes in IPL6 ?",
    "3. In India ,under which Unionministry does the 'Rajbhasha Vibhag' function ?",
    "4. According to a proverb, what is said to be'The mother of invention' ?",
    "5. Which actress got married to Siddharth Roy Kapur in 2012 ?",
    "6. To whom did Ravindranath Tagore dedicate his book 'vishva parichay' written on science ?",
    "7. Which of these is a chemical element present in the periodic table ?",
    "8. Which of these is not a work of Kalidas ?",
    "9. According to the Devi, Bhagavata, from the tears of which god is the rudraksha tree believed to have been created ?",
    "10. Which of these means 'Gold Like'?"
  ];
  List Col = [
    Colors.purple,
    Colors.pinkAccent,
    Colors.amber,
    Colors.lightGreen,
    Colors.blueAccent,
    Colors.deepOrange,
    Colors.pink,
    Colors.blueGrey,
    Colors.brown,
    Colors.lime
  ];
  List A = [
    "A. Bharat Mata",
    "A. SunChangers",
    "A. Home Affairs",
    "A. Society",
    "A. Prachi Desai",
    "A. C V Raman",
    "A. Eurocium",
    "A. Raghuvansham",
    "A. Vishnu",
    "A. Sonakshi"
  ];
  List B = [
    "B. Parliament",
    "B. Nizam Jyoti",
    "B. HRD",
    "B. Problem",
    "B. Lisa Roy",
    "B. Satyandra Nath Bose",
    "B. Asiacium",
    "B. Kadambari",
    "B. Shiva",
    "B.Deepika"
  ];
  List C = [
    "C. MumbaiCity",
    "C. Andhra Aces",
    "C. Colture",
    "C. Science",
    "C. Vidhya Balan",
    "C. P C ROyn",
    "C. Americium",
    "C. Vikramorvasiyam",
    "C. Krishna",
    "C. Sonam"
  ];
  List D = [
    "D. Bhagwan",
    "D. Sun Risers Heydrabad",
    "D. Law &Justice",
    "D. Necessity",
    "D. Sushmita sen",
    "D. Jagdish  Chandra Bose",
    "D. Africium",
    "D. Meghadutam",
    "D. Kamadeva",
    "D. Katrina"
  ];
  List Ta = ["B", "D", "A", "D", "C", "B", "C", "B", "B", "C"];

  List u_ans = [""];
  int count = 0;

  Color c1 = Colors.grey.shade800;
  Color c2 = Colors.grey.shade800;
  Color c3 = Colors.grey.shade800;
  Color c4 = Colors.grey.shade800;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("KBC Game"),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                setState(() {
                  u_ans.clear();
                  i = 0;
                });
              },
              color: Colors.white,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                color: Col[i],
                alignment: Alignment.center,
                child: Text(
                  "${qu[i]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (i < 9) {
                              setState(() {
                                c1 = Colors.green;
                                c2 = Colors.grey.shade800;
                                c3 = Colors.grey.shade800;
                                c4 = Colors.grey.shade800;
                                i++;
                              });
                            }
                            u_ans.add("A");
                            print(u_ans);
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:c1
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "${A[i]}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (i < 9) {
                              setState(() {
                                c2 = Colors.green;
                                c1 = Colors.grey.shade800;
                                c3 = Colors.grey.shade800;
                                c4 = Colors.grey.shade800;
                                i++;
                              });
                            }
                            u_ans.add("B");
                            print(u_ans);
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: c2),
                            alignment: Alignment.center,
                            child: Text(
                              "${B[i]}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (i < 9) {
                              setState(() {
                                c3 = Colors.green;
                                c2 = Colors.grey.shade800;
                                c1 = Colors.grey.shade800;
                                c4 = Colors.grey.shade800;
                                i++;
                              });
                            }
                            u_ans.add("C");
                            print(u_ans);
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: c3),
                            alignment: Alignment.center,
                            child: Text(
                              "${C[i]}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (i < 9) {
                              setState(() {
                                c4 = Colors.green;
                                c2 = Colors.grey.shade800;
                                c3 = Colors.grey.shade800;
                                c1 = Colors.grey.shade800;
                                i++;
                              });
                            }
                            u_ans.add("D");
                            print(u_ans);
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: c4),
                            alignment: Alignment.center,
                            child: Text(
                              "${D[i]}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        if (i == 9) {
                          Final();
                        }
                      },
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        alignment: Alignment.center,
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Final() {
    count = 0;
    for (int j = 0; j <= 9; j++) {
      if (Ta[j] == u_ans[j]) {
        count++;
      }
    }
    if (count <= 5) {
      Navigator.pushNamed(context,'w_ans',arguments: count);
    }
    else {
      Navigator.pushNamed(context, 'ans', arguments: count);
    }
  }
}