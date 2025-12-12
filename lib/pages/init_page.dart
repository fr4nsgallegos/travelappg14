import 'package:flutter/material.dart';
import 'package:travelappg14/pages/home_page.dart';
import 'package:travelappg14/pages/home_page_shared_preferences.dart';
import 'package:travelappg14/pages/welcome_page.dart';
import 'package:travelappg14/preferences/preferences_service.dart';

class InitPage extends StatefulWidget {
  InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool showWelcomPage = true;

  PreferencesService preferencesService = PreferencesService();

  void cargarYaInicio() async {
    showWelcomPage = !(await preferencesService.getYaInicio() ?? false);
    print(showWelcomPage);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cargarYaInicio();
  }

  @override
  Widget build(BuildContext context) {
    return showWelcomPage ? WelcomePage() : HomePage();
  }
}
