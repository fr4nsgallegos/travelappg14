import 'package:flutter/material.dart';
import 'package:travelappg14/widgets/custom_expansion_tile.dart';
import 'package:travelappg14/widgets/destination_card_2_widget.dart';
import 'package:travelappg14/widgets/destination_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerScrimColor: Colors.black.withOpacity(
          0.6,
        ), // color que aparece por detrás del menu hamburguesa
        drawer: Drawer(
          width: 300, //definir el ancho del menu
          shape: RoundedRectangleBorder(
            // borderRadius: BorderRadiusGeometry.circular(50),
            borderRadius: BorderRadiusGeometry.horizontal(
              right: Radius.circular(50),
            ),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterLogo(size: 75),
                      Text(
                        "Jhonny Gallegos Mendoza",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
              ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Configuración"),
              ),
              Divider(),
              ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
              ExpansionTile(
                title: Text("Ajustes"),
                leading: Icon(Icons.settings),
                children: [
                  ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
                  ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
                ],
              ),
              CustomExpansionTile(
                title: "Opciones",
                children: [
                  ListTile(title: Text("Opción 1")),
                  ListTile(title: Text("Opción 1")),
                  ListTile(title: Text("Opción 1")),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.rocket, color: Colors.cyan),
              SizedBox(width: 8),
              Text("Discount tour"),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Text(
                "Find the best tour",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content ",
              ),
              SizedBox(height: 16),
              Text(
                "Country",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 26),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DestinationCardWidget(),
                    DestinationCardWidget(),
                    DestinationCardWidget(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              DestinationCard2Widget(),
              DestinationCard2Widget(),
              DestinationCard2Widget(),
              DestinationCard2Widget(),
            ],
          ),
        ),
      ),
    );
  }
}
