import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg14/preferences/preferences_service.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final prefs = PreferencesService();
  int contador = 10;
  String nombre = "sin nombre";

  void saveCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt("counter", contador);
    // alacenando otras
    await prefs.setString("user", "jgallegos");
    await prefs.setStringList("products", ["papa", "durazno"]);
  }

  void leerContador() async {
    final prefs = await SharedPreferences.getInstance();
    int? contadorAux = prefs.getInt("counter");
    contador = contadorAux ?? 0;
    setState(() {});
  }

  void cargarNombre() async {
    final name = await prefs.getUserName();
    nombre = name ?? " - ";
    setState(() {});
  }

  void guardarNombre() async {
    await prefs.setUserName("jhony gallegos");
    cargarNombre();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    leerContador();
    cargarNombre();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(contador.toString(), style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                contador++;
                saveCounter();
                setState(() {});
                guardarNombre();
              },
              child: Text("Agregar 1"),
            ),

            Text(nombre, style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
