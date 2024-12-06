import 'package:flutter/material.dart';
import 'package:flutter_application_1/form_biner.dart';
import 'package:flutter_application_1/AA.appbar_widget.dart';
import 'package:flutter_application_1/AB.containers.dart';
import 'package:flutter_application_1/AC.text_widget.dart';
import 'package:flutter_application_1/AD.column.dart';
import 'package:flutter_application_1/AE.row.dart';
import 'package:flutter_application_1/AF.button_widget.dart';
import 'package:flutter_application_1/AG.icon_widget.dart';
import 'package:flutter_application_1/AH.image_widget.dart';
import 'package:flutter_application_1/AI.circleavatar_widget.dart';
import 'package:flutter_application_1/BA.navigationpush_widget.dart';
import 'package:flutter_application_1/BB.navigationpop_widget.dart';
import 'package:flutter_application_1/BC.BottomNavigationBar.dart';
import 'package:flutter_application_1/BD.tabbar_widget.dart';
import 'package:flutter_application_1/BE.drawer_widget.dart';
import 'package:flutter_application_1/BF.silverappbar_widget.dart';
import 'package:flutter_application_1/CA.columns.dart';
import 'package:flutter_application_1/CB.row.dart';
import 'package:flutter_application_1/CC.ListView.dart';
import 'package:flutter_application_1/CD.gridviews.dart';
import 'package:flutter_application_1/CE.padding.dart';
import 'package:flutter_application_1/CF.AspectRasio.dart';
import 'package:flutter_application_1/CG.center.dart';
import 'package:flutter_application_1/CH.expanded_widget.dart';
import 'package:flutter_application_1/CI.sized_box.dart';
import 'package:flutter_application_1/CJ.wraps.dart';
import 'package:flutter_application_1/CK.stack.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  FormBiner (),  
    );  
  }
}