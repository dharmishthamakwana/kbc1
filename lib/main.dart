

import 'package:flutter/material.dart';
import 'package:kbc1/screen1.dart';
import 'package:kbc1/screen2.dart';
import 'package:kbc1/screen3.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> Kbc(),
        'ans':(context)=>Ans(),
        'w_ans':(context)=> w_ans(),
      },
    ),
  );
}