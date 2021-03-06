import 'package:flutter/material.dart';
import 'package:futuro/screensPlanetas/terra/terra.dart';

class InfoTerra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(""),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    );

    var size = MediaQuery.of(context).size;
    //var screenHeight = ( size.height - appBar.preferredSize.height ) - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      extendBodyBehindAppBar: true,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/fundo-preto.png"), fit: BoxFit.cover),
        ),
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: Column(
                  children: [
                    Terra(),
                  ],
                )
            );
          },
        )
      ),
    );
  }
}
