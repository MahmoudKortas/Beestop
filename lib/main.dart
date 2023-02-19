import 'package:flutter/material.dart';
import 'constant_widget.dart';
import 'constant_data.dart';
import 'block1.dart';
import 'block.dart';
import 'block2.dart';
import 'block3.dart';
import 'map0.dart';

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
                      children: [
                        IconButton(
                          onPressed: (() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Map0(title: "Rooftop Rental",)),
                              )),
                          icon: Icon(Icons.map),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: Icon(Icons.tune),
                          onPressed: (() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Block()),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: const Image(
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        height: 100,
                        image: AssetImage('assets/block.png'),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Block()),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: const Image(
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        height: 100,
                        image: AssetImage('assets/block1.png'),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Block1()),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: const Image(
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        height: 100,
                        image: AssetImage('assets/block2.png'),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Block2()),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: const Image(
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        height: 100,
                        image: AssetImage('assets/block3.png'),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Block3()),
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
