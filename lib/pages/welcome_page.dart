import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:travelappg14/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: GFCarousel(
          height: size.height,
          hasPagination: true,
          enableInfiniteScroll: false,
          enlargeMainPage: true,
          items: [
            WelcomeWidget(
              title: "Viaja1",
              description:
                  "em Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ",
              asset: "avion",
              bgColor: Colors.red,
              size: size,
            ),
            WelcomeWidget(
              title: "Imprimte tus tickets",
              description:
                  "em Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ",
              asset: "print",
              bgColor: Colors.orange,
              size: size,
            ),
            WelcomeWidget(
              title: "Agenda tus viajes",
              description:
                  "em Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ",
              asset: "agregar",
              bgColor: Colors.cyan,
              size: size,
              showButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
