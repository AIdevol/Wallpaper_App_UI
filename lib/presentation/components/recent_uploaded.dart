import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wall_app/helpers_utils/helper_images.dart';

class RecendUploaded extends StatefulWidget {
  const RecendUploaded({super.key});

  @override
  State<RecendUploaded> createState() => _RecendUploadedsState();
}

class _RecendUploadedsState extends State<RecendUploaded> {
  final List<Map<String, String>> wallpapers = [
    {'title': 'Ringtone 1', 'subtitle': 'Artist 1', 'image': nature1},
    {'title': 'Ringtone 2', 'subtitle': 'Artist 2', 'image': nature2},
    {'title': 'Ringtone 3', 'subtitle': 'Artist 3', 'image': nature3},
    {'title': 'Ringtone 3', 'subtitle': 'Artist 3', 'image': nature4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: wallpapers.length,
          itemBuilder: (context, index) {
            return _buildRingtone(
              wallpapers[index]['title']!,
              wallpapers[index]['subtitle']!,
              wallpapers[index]['image']!,
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
              height: 300,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
