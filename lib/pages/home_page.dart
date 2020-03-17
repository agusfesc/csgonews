
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
        ---------------------- MENU DE ARRIBA ----------------------
       */
      appBar: GFAppBar(
        searchBar: true,
        leading: GFIconButton(
          icon: Icon(
            FontAwesomeIcons.bell,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: () {

          },
          type: GFButtonType.transparent,
        ),

        backgroundColor: Color(0xFF333333),
        title: Text(
          "CSGO NEWS",

          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),


          ),
        ),

      ),
        /*
        ---------------------- MENU DE ABAJO ----------------------
        */
      bottomNavigationBar: BottomNavigationBar(

        elevation: 20.0,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        backgroundColor: Color(0xFF333333),

        items: [
          // BOTON 1
          BottomNavigationBarItem(
            icon:Icon(LineAwesomeIcons.home, size: 25.0, color: Colors.black,) ,
            activeIcon: new RawMaterialButton(
              onPressed: () {

              },
              child: new Icon(LineAwesomeIcons.home, color: Colors.black, size: 25.0,),
              shape: new CircleBorder(),
              fillColor: Colors.white,
              padding: const EdgeInsets.all(4.0),
            ),
            title: Text("", style: TextStyle(fontSize: 0.0,),),
          ),
          // BOTON 2
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.newspaper_o, size: 25.0, color: Colors.black,),
            activeIcon: new RawMaterialButton(
              onPressed: () {

              },
              child: new Icon(LineAwesomeIcons.newspaper_o, color: Colors.black, size: 25.0,),
              shape: new CircleBorder(),
              fillColor: Colors.white,
              padding: const EdgeInsets.all(4.0),
            ),
            title: Text("", style: TextStyle(fontSize: 0.0,),),
          ),
          // BOTON 3
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.calendar, size: 25.0, color: Colors.black,),
            activeIcon: new RawMaterialButton(
              onPressed: () {

              },
              child: new Icon(LineAwesomeIcons.calendar, color: Colors.black, size: 25.0,),
              shape: new CircleBorder(),
              fillColor: Colors.white,
              padding: const EdgeInsets.all(4.0),
            ),
            title: Text("", style: TextStyle(fontSize: 0.0,),),
          )
        ],
      ) ,
      /*
        ---------------------- MENU DE ABAJO ----------------------
      */
      body: _body(),
    );
  }

// Setear icono seleccionado
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }




  Widget _body(){
    return ListView.separated(
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (context, index) {
            return GFCard(
              boxFit: BoxFit.cover,
              elevation: 13.0,
              imageOverlay: AssetImage('assets/images/fondo.png'),
              title: GFListTile(
                title: Center(child: Text('TITULO', textAlign: TextAlign.center, )),
              ),
              content: Text("Breve Descripcion"),
              buttonBar: GFButtonBar(

                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'Read More',
                  ),
                ],
              ),
            );
          },

      );

  }


}

