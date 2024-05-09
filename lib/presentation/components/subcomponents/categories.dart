import 'package:flutter/material.dart';

class CotegoriesData extends StatefulWidget {
  const CotegoriesData({super.key});

  @override
  State<CotegoriesData> createState() => _CotegoriesDataState();
}

class _CotegoriesDataState extends State<CotegoriesData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return Container();
      },
    ),);
  }
}