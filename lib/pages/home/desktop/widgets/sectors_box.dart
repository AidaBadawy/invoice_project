// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SectorsBox extends StatefulWidget {
  const SectorsBox({Key key}) : super(key: key);

  @override
  State<SectorsBox> createState() => SectorsBoxState();
}

class SectorsBoxState extends State<SectorsBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Suits 90% of business',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Sectors',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: rowBox('Retail Sector', Icons.shopping_bag)),
                    Expanded(
                        child: rowBox('Grocery Store', Icons.shopping_cart)),
                    Expanded(
                        child: rowBox(
                            'Institutions & Companies', Icons.apartment)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: rowBox('Libraries & Student Service Centers',
                            Icons.bookmark_border_outlined)),
                    Expanded(child: rowBox('Pharmacies', Icons.medication)),
                    Expanded(
                        child:
                            rowBox('Construction Sector', Icons.house_siding)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: rowBox(
                            'Offices and Suppliers', Icons.shopping_bag)),
                    Expanded(
                        child: rowBox(
                            'Electronic stores', Icons.electrical_services)),
                    Expanded(
                        child: rowBox('Emerging Business', Icons.apartment)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: rowBox('Schools', Icons.shopping_bag)),
                    Expanded(
                        child: rowBox('Clinics & Health Centers',
                            Icons.phonelink_ring_sharp)),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowBox(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(width: 10),
          SizedBox(
              width: 250,
              child: Text(title,
                  softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 20))),
        ],
      ),
    );
  }
}
