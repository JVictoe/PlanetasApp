import 'package:flutter/material.dart';
import 'package:futuro/screensPlanetas/terra/infoterra.dart';

class Terra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints){
          return SingleChildScrollView(
            child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/fundo-preto.png"),
                      fit: BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Terra",
                        style: TextStyle(
                            fontFamily: 'BebasNeue-Regular',
                            fontSize: 60,
                            color: Colors.white
                        ),
                      ),
                      Text("Planeta Azul",
                        style: TextStyle(
                            fontFamily: 'BebasNeue-Regular',
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 50.0,),
                      Container(
                        width: size.width * .5,
                        height: size.height * .3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/terra.gif"),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tamanho",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.blue
                              ),
                            ),
                            Text("Distância até o sol",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.blue
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("12.756,2 km",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            Text("149.600.000 km",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Massa",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.blue
                              ),
                            ),
                            Text("Temperatura média",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.blue
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("5,9736 x 1024 kg",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            Text("14ºC",
                              style: TextStyle(
                                  fontFamily: 'BebasNeue-Regular',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 9.0,),
                      Container(
                        width: size.width * .5,
                        height: size.height * .12,
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: ButtonTheme(
                              minWidth: 200.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Colors.blue,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InfoTerra()));
                                },
                                child: Text("Mais informações",
                                  style: TextStyle(
                                      fontFamily: 'BebasNeue-Regular',
                                      fontSize: 15,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),

                    ],
                  ),
                )
            ),
          );

        },
      )
    );
  }
}
