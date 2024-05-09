import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wall_app/helpers_utils/helper_images.dart';

class Ringtones extends StatefulWidget {
  const Ringtones({super.key});

  @override
  State<Ringtones> createState() => _RingtonesState();
}

class _RingtonesState extends State<Ringtones> {
  
  final List<Map<String, String>> ringtones = [
    {'title': 'Ringtone 1', 'subtitle': 'Artist 1', 'image': ringtone1},
    {'title': 'Ringtone 2', 'subtitle': 'Artist 2', 'image': ringtone2},
    {'title': 'Ringtone 3', 'subtitle': 'Artist 3', 'image': ringtone3},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ringtones.length,
          itemBuilder: (context, index) {
            return _buildRingtone(
              ringtones[index]['title']!,
              ringtones[index]['subtitle']!,
              ringtones[index]['image']!,
            );
          },
        ),
      ),
    );
  }

  Widget _buildRingtone(String title, String subtitle, String image) {
    return Container(
      width: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.4),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_circle_fill,
                      size: 48.0, color: Colors.white),
                  tooltip: 'Play Ringtone',
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 8.0),
            //   child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            // ),
            // Text(subtitle),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
