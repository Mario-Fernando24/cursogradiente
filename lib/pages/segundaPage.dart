import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//libreria de interfaz de usuario y le damos un alias
import 'dart:ui' as ui;

class SegundoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //para el tamaño de la pantalla
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //esto es para poder corregir una linea amarilla en el cual es cuando el telefono es muy pequeño y sobrepasamos nuestros pixeles
      body: SafeArea(
          child: Container(
        width: double.infinity,
        //que ocupe toda la pantalla
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        //Mario con SingleChildScrollView que este en una columna principal se puede arreglar la franja amarilla que sale cuando la aplicacion no se adapta al disposivo movil
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text(
                  'Tienda',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                      color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2.0),
                    //este widget nos ayuda a poner cualquier objeto por encima del otro
                    child: Stack(
                      children: <Widget>[
                        Align(
                          //agregamos la imagen
                          child: new Image(
                            width: 300.0,
                            height: 200.0,
                            image: new AssetImage('assets/images/maldona.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //creamos la entrada del correo electronico y le damos un paddin de 40
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email", icon: Icon(Icons.email)),
                  ),
                  //salto de 40px
                  SizedBox(
                    height: 40.0,
                  ),
                  //password
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Passord", icon: Icon(Icons.vpn_key)),
                  ),

                  SizedBox(
                    height: 40.0,
                  ),

                  //incluimos los botones

                  Row(
                    //para centrar la fila
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                          //para quitar la linea amarilla
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30.0),
                          child: Text("Login"),
                          onPressed: () {}),
                      SizedBox(
                        width: 10.0,
                      ),
                      CupertinoButton(
                          //para quitar la linea amarilla
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30.0),
                          child: Text("Cancelar"),
                          onPressed: () {})
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
