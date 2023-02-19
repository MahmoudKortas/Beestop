import 'package:flutter/material.dart';
import 'constant_data.dart';
import 'constant_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Beestop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rooftop Rental'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double secHeight = ConstantWidget.getScreenPercentSize(context, 39);
    double radius = ConstantWidget.getScreenPercentSize(context, 6);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              fit: BoxFit.fitWidth,
              height: 100,
              width: MediaQuery.of(context).size.width,
              image: const AssetImage('assets/splash.png'),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: radius / 2, right: radius / 2, left: radius / 2),
                child: Column(
                  children: [
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
                    Card(
                      elevation: 1,
                      child: Row(
                        children: [
                          const Image(
                            fit: BoxFit.fitWidth,
                            height: 100,
                            image: const AssetImage('assets/roof1.png'),
                          ),
                          Column(
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
