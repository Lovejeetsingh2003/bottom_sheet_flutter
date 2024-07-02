import 'package:bottom_sheet/bottom_sheet_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RangeValues _selectedRangeValues = RangeValues(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Sheet",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return BottomSheetScreen();
                    }).then((value) {
                  _selectedRangeValues = value;
                  setState(() {});
                });
              },
              child: Text(
                "Open Bottom Sheet",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Text(
              "The Selected Range is ${_selectedRangeValues.start} - ${_selectedRangeValues.end}.",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
