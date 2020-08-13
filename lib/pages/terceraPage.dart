import 'package:flutter/material.dart';

class TerceraPage extends StatefulWidget {
  @override
  _TerceraPageState createState() => _TerceraPageState();
}

//convertimos en un statedulWidget nos permite cambiar el estado que al presionar un boton cambia de verde a rojo y viceversa
const List<Color> orangeGradients = [
  //declaramos un listado de colores gradientes
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
];

//convertimos en un statedulWidget nos permite cambiar el estado que al presionar un boton cambia de verde a rojo y viceversa
const List<Color> purpleGradients = [
  //declaramos un listado de colores gradientes
  Color(0xFF7700FF),
  Color(0xFF8351D4),
  Color(0xFF746C8A),
];

//convertimos en un statedulWidget nos permite cambiar el estado que al presionar un boton cambia de verde a rojo y viceversa
const List<Color> blueGradients = [
  //declaramos un listado de colores gradientes
  Color(0xFF0F13F8),
  Color(0xFF5570C7),
  Color(0xFF5E8EF7),
];

class _TerceraPageState extends State<TerceraPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        //le impone restricciones a su hijo lo max
        constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Container(
                color: Colors.pink,
                height: 200,
                width: 350,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    gradient: LinearGradient(
                        colors: orangeGradients,
                        //para decirle desde donde va a empezar el degradado
                        begin: Alignment.topLeft,
                        //donde termina el gradiente
                        end: Alignment.bottomRight)),
                child: Container(
                  //le agregamos un titulo
                  padding: EdgeInsets.only(top: 35.0, bottom: 16),
                  child: Text(
                    'Iniciando',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    gradient: LinearGradient(
                        colors: purpleGradients,
                        //para decirle desde donde va a empezar el degradado
                        begin: Alignment.topLeft,
                        //donde termina el gradiente
                        end: Alignment.bottomRight)),

                //le agregamos un titulo
                child: Text(
                  'Hola',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    gradient: LinearGradient(
                        colors: purpleGradients,
                        //para decirle desde donde va a empezar el degradado
                        begin: Alignment.topLeft,
                        //donde termina el gradiente
                        end: Alignment.bottomRight)),

                //le agregamos un titulo
                child: Text(
                  'Hola',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  print("presiono");
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        gradient: LinearGradient(
                            colors: blueGradients,
                            //para decirle desde donde va a empezar el degradado
                            begin: Alignment.topLeft,
                            //donde termina el gradiente
                            end: Alignment.bottomRight)),

                    //le agregamos un titulo
                    child: ImageIcon(
                      AssetImage("assets/images/botton.jpg"),
                      size: 100,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
