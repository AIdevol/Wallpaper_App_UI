// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:wall_app/helpers_utils/helper_images.dart';
// import 'package:wall_app/helpers_utils/helpers_texts.dart';
// import 'package:wall_app/presentation/bottom_view/floatting_bottom.dart';
// import 'package:wall_app/presentation/components/daily_wallpapers.dart';
// import 'package:wall_app/presentation/components/recent_uploaded.dart';
// import 'package:wall_app/presentation/components/ringstone.dart'; // Check this path is correct

// class MyHomepage extends StatefulWidget {
//    MyHomepage({super.key});

//   @override
//   State<MyHomepage> createState() => _MyHomepageState();
//    double _topPosition = 20.0;
//   double _leftPosition = 20.0;

//   @override
//   void initState() {
//     super.initState();
//     // Start animation after the build process
//     WidgetsBinding.instance.addPostFrameCallback((_) => startAnimation());
//   }

//   void startAnimation() {
//     setState(() {
//       _topPosition = 100.0; // Change the position to animate to
//       _leftPosition = 100.0;
//     });
//   }
// }

// class _MyHomepageState extends State<MyHomepage> {
//   final PageController _controller = PageController(viewportFraction: 0.8);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         elevation: 0,
//         leading: const Icon(Icons.menu_outlined, color: Colors.white, size: 30),
//         title: Center(
//           child: RichText(
//             text: TextSpan(
//               style: Theme.of(context)
//                       .textTheme
//                       .titleLarge
//                       ?.copyWith(fontSize: 25) ??
//                   TextStyle(fontSize: 24),
//               children: const [
//                 TextSpan(text: 'Wall', style: TextStyle(color: Colors.white)),
//                 TextSpan(text: 'paper', style: TextStyle(color: Colors.grey)),
//               ],
//             ),
//           ),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(Icons.search_outlined, color: Colors.white, size: 30),
//           ),
//         ],
//       ),
//       body: Stack(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Expanded(
//                 flex: 1,
//                 child: Container(color: Colors.blueAccent),
//               ),
//               Expanded(
//                 flex: 8,
//                 child: Container(color: Colors.white),
//               ),
//             ],
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             top: MediaQuery.of(context).size.height * 0.2 - 160,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 160,
//                   child: PageView.builder(
//                     controller: _controller,
//                     itemCount: HelperImages.images.length,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 Image.asset(
//                                   HelperImages.images[index],
//                                   fit: BoxFit.cover,
//                                 ),
//                                 const Positioned(
//                                   left: 16,
//                                   bottom: 16,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         'Wallpaper',
//                                         style: TextStyle(
//                                           color: Colors.grey,
//                                           fontSize: 15,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       Text(
//                                         'OF THE DAY',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 30,
//                                         ),
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text(
//                                             'Explore now',
//                                             style: TextStyle(
//                                               color: Colors.blue,
//                                               fontSize: 14,
//                                             ),
//                                           ),
//                                           SizedBox(width: 4),
//                                           Icon(Icons.keyboard_arrow_right_sharp,
//                                               color: Colors.blue),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 SmoothPageIndicator(
//                   controller: _controller,
//                   count: HelperImages.images.length,
//                   effect: const ExpandingDotsEffect(
//                     activeDotColor: Colors.blueAccent,
//                     dotColor: Colors.grey,
//                     dotHeight: 10,
//                     dotWidth: 10,
//                     expansionFactor: 4,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(dring),
//                       TextButton(onPressed: () {}, child: Text(seeall))
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 130,
//                   child: Ringtones(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(everydaywal),
//                       TextButton(onPressed: () {}, child: Text(seeall))
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 130,
//                   child: Wallpapers(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(recentupload),
//                       TextButton(onPressed: () {}, child: Text(seeall)),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   child: const RecendUploaded(),
//                 )
//               ],
//             ),
//           ),
//           Positioned(left: 0, right: 0, bottom: 0, child: FloatingBottom())
//         ],
//       ),
//     );
//   }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wall_app/helpers_utils/helper_images.dart';
import 'package:wall_app/helpers_utils/helpers_texts.dart';
import 'package:wall_app/presentation/bottom_view/floatting_bottom.dart';
import 'package:wall_app/presentation/components/daily_wallpapers.dart';
import 'package:wall_app/presentation/components/recent_uploaded.dart';
import 'package:wall_app/presentation/components/ringstone.dart';

class MyHomepage extends StatefulWidget {
  MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_currentPage < HelperImages.images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_controller.hasClients) {
        _controller.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading: const Icon(Icons.menu_outlined, color: Colors.white, size: 30),
        title: Center(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 25) ??
                  TextStyle(fontSize: 24),
              children: const [
                TextSpan(text: 'Wall', style: TextStyle(color: Colors.white)),
                TextSpan(text: 'paper', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search_outlined, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(color: Colors.blueAccent),
              ),
              Expanded(
                flex: 8,
                child: Container(color: Colors.white),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.2 - 160,
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: HelperImages.images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  HelperImages.images[index],
                                  fit: BoxFit.cover,
                                ),
                                const Positioned(
                                  left: 16,
                                  bottom: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Wallpaper',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'OF THE DAY',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Explore now',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(width: 4),
                                          Icon(Icons.keyboard_arrow_right_sharp,
                                              color: Colors.blue),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _controller,
                  count: HelperImages.images.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.blueAccent,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    expansionFactor: 4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dring),
                      TextButton(onPressed: () {}, child: Text(seeall))
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  child: Ringtones(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(everydaywal),
                      TextButton(onPressed: () {}, child: Text(seeall))
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  child: Wallpapers(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(recentupload),
                      TextButton(onPressed: () {}, child: Text(seeall)),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: const RecendUploaded(),
                )
              ],
            ),
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: FloatingBottom())
        ],
      ),
    );
  }
}
