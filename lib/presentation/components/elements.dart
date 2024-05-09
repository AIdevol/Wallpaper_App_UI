import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wall_app/helpers_utils/helpers_texts.dart';
import 'package:wall_app/presentation/components/subcomponents/categories.dart';

class ShapePage extends StatefulWidget {
  const ShapePage({super.key});

  @override
  State<ShapePage> createState() => _ShapePageState();
}

class _ShapePageState extends State<ShapePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_outlined,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              color,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(catergory,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          ),
          // Stack(children: [CotegoriesData()])
        ],
      ),
    );
  }
}
