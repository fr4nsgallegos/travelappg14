import 'package:flutter/material.dart';
import 'package:travelappg14/pages/home_page.dart';
import 'package:travelappg14/pages/home_page_shared_preferences.dart';
import 'package:travelappg14/preferences/preferences_service.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  String asset;
  Color bgColor;
  Size size;
  bool showButton;

  WelcomeWidget({
    required this.title,
    required this.description,
    required this.asset,
    required this.bgColor,
    required this.size,
    this.showButton = false,
  });
  PreferencesService preferencesService = PreferencesService();

  void guardarYaInicio() async {
    await preferencesService.setYaInicio();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/$asset.png", height: size.height / 5),
          SizedBox(height: 32),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),

          showButton
              ? Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      guardarYaInicio();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text("Vamos!!!"),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
