import 'package:flutter/material.dart';
import 'constant_data.dart';
import 'constant_widget.dart';

class Map0 extends StatefulWidget {
  const Map0({super.key, required this.title});

  final String title;

  @override
  State<Map0> createState() => _Map0State();
}

class _Map0State extends State<Map0> {
  @override
  Widget build(BuildContext context) {
    double radius = 50;
    //final BoxFit? fit;

    return Scaffold(
      backgroundColor: "FFA600".toColor(),
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.add),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Image(
            fit: BoxFit.fitWidth,
            height: 100,
            width: 300,
            image: AssetImage('assets/splash.png'),
          ),
          Container(
            height: 400,
            width: 390,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: radius / 2,
                      right: radius / 2,
                      left: radius / 2,
                      bottom: radius / 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "sort by",
                            ),
                            Text(
                              "Map0 view",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.map),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.tune),
                          ],
                        ),
                      ]),
                ),
                FittedBox(
                  child: Image(
                    image: const AssetImage('assets/map.png'),
                  ),
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
