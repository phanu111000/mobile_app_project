import 'package:flutter/material.dart';

void main() => runApp(WatchingPage());

class WatchingPage extends StatelessWidget {
  const WatchingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("images/bg.jpg"),
                      fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(top: 40, right: 310),
                      iconSize: 35,
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }
                    ),
                    SizedBox(height: 350),
                    Text('Watching Category!', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700))
                  ],
                )
            )
        )
    );
  }
}