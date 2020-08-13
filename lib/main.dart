import 'package:appcomidasfirebase/pages/segundaPage.dart';
import 'package:appcomidasfirebase/pages/terceraPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Cliente',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //creo mi variable de tipo entero pRA LA BARRA INFERIOR
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    //hacemos una barra de navegacion un button anavegation
    final size = MediaQuery.of(context).size;

    //tamaño de la pantalla
    Widget child;
    //que ocupe todo el alto y ancho de la pantalla
    switch (_index) {
      //aqui me manda al logo de flutter
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        //mando a la primera pagina con un menu de opciones
        child = MaterialApp(
          //inhabilito la etiqueta de agua que trae por defecto flutter
          //que presione el boton de registro que vaya a la primera pagina
          debugShowCheckedModeBanner: false, home: new SegundoPage(),
        );
        break;
      case 2:
        child = MaterialApp(
          //inhabilito la etiqueta de agua que trae por defecto flutter
          debugShowCheckedModeBanner: false, home: new TerceraPage(),
        );
        break;
      default:
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        //hacemos un llamado al index
        currentIndex: _index,
        //llamamos al item para que el conozca la posicion, para que cuando yo este aqui y le de click me mande a las diferentes vistas
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blueAccent,
                size: 30.0,
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.format_align_center,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text("Registrarme")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.orangeAccent,
                size: 30.0,
              ),
              title: Text("Carrito")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text("Historial"))
        ],
      ),
    );
  }
}
