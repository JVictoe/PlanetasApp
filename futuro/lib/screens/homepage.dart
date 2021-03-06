import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/joaoj/AndroidStudioProjects/futuro/lib/screensPlanetas/terra/terra.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
    title: Text(""),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.white),
    );

    return Scaffold(
        appBar: appBar,
        extendBodyBehindAppBar: true,
        drawer: Drawer(),
        body: Terra(),

    );
  }
}

