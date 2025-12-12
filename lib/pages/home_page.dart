import 'package:flutter/material.dart';
import 'package:travelappg14/widgets/destination_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
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
            ],
          ),
        ),
      ),
    );
  }
}
