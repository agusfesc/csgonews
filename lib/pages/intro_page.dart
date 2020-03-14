import 'package:csgonews/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'dart:async';



class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => print("Splash Success") );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.orange),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Color(0xFF596886),
                        child: ClipOval(
                          child: Image.network(
                              'https://i.imgur.com/iKXJwiS.png',
                              width: 120,
                              fit: BoxFit.fill
                          ),
                        ),
                        radius: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,

                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(Colors.white)
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("LA INFORMACIÓN DE LA ESCENA ARGENTINA EN TU CELULAR",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF545454),

                        fontFamily: 'Raleway',

                    ),
                    )
                  ],
                ),
              )

          ],
          )
        ],
      ),
    );
  }


}
