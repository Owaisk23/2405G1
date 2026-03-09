import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({ Key? key }) : super(key: key);

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body:  Padding(
        // padding: const EdgeInsets.all(128.0),
        // padding: const EdgeInsets.symmetric(horizontal: 128.0, vertical: 64.0),
        padding: const EdgeInsets.only(left: 80.0, top: 23.0, right: 128.0, bottom: 64.0),
        child: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Icon(Icons.home, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Icon(Icons.phone, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Icon(Icons.book, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.brown,
                child: Icon(Icons.bluetooth_outlined, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Icon(Icons.umbrella, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
                child: Icon(Icons.settings, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Icon(Icons.book, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.brown,
                child: Icon(Icons.bluetooth_outlined, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Icon(Icons.umbrella, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
                child: Icon(Icons.settings, color: Colors.white, size: 50),
              ),
            ],
          ),
        ),
      )
    );
  }
}
































      // body: SingleChildScrollView( 
      //   scrollDirection: Axis.vertical,
      // child: Center(
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //         child: Icon(Icons.home, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //         child: Icon(Icons.phone, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //         child: Icon(Icons.book, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.brown,
      //         child: Icon(Icons.bluetooth_outlined, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.yellow,
      //         child: Icon(Icons.umbrella, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.deepOrange,
      //         child: Icon(Icons.settings, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //         child: Icon(Icons.book, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.brown,
      //         child: Icon(Icons.bluetooth_outlined, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.yellow,
      //         child: Icon(Icons.umbrella, color: Colors.white, size: 50),
      //       ),
      //       SizedBox(height: 20),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.deepOrange,
      //         child: Icon(Icons.settings, color: Colors.white, size: 50),
      //       ),
      //     ],
      //   ),
      // )
      // )