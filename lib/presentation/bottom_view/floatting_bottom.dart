import 'package:flutter/material.dart';
import 'package:wall_app/presentation/components/elements.dart';
import 'package:wall_app/presentation/components/music_page.dart';
import 'package:wall_app/presentation/view/home_page.dart';

// Define placeholder pages for demonstration

class FloatingBottom extends StatefulWidget {
  @override
  _FloatingBottomState createState() => _FloatingBottomState();
}

class _FloatingBottomState extends State<FloatingBottom> {
  int _selectedIndex = 0;
  List<bool> opened = List.generate(5, (index) => false);

  static final List<IconData> icons = [
    Icons.home,
    Icons.music_note,
    Icons.shape_line_sharp,
    Icons.local_fire_department_sharp,
    Icons.settings,
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (_selectedIndex == index) {
        opened[index] =
            !opened[index]; // Toggle only if the same index is tapped again
      } else {
        opened = List.generate(5, (i) => false); // Reset all to closed
        opened[index] = true; // Open the tapped item
      }
      _selectedIndex = index;
    });
    _navigateToSelectedPage(index);
  }

  void _navigateToSelectedPage(int index) {
    Widget page;
    switch (index) {
      case 0:
        page = MyHomepage();
        break;
      case 1:
        page = MusicPage();
        break;
      case 2:
        page = ShapePage();
        break;
      case 3:
        page = MyHomepage();
        break;
      case 4:
        page = ShapePage();
        break;
      default:
        return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (index) {
          return GestureDetector(
            onTap: () => _onItemTapped(index),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              transform: Matrix4.identity()..scale(opened[index] ? 1.2 : 1.0),
              child: Icon(
                icons[index],
                color: _selectedIndex == index ? Colors.grey : Colors.blue,
                size: 25,
              ),
            ),
          );
        }),
      ),
    );
  }
}
