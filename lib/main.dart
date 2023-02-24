import 'package:flutter/material.dart';
import './app_screens/watching_category.dart';
import './app_screens/reading_category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                SizedBox(height: 200),
                Image.asset('images/alan.png', width: 200, height: 200),
                SizedBox(height: 80),
                Text("Choose your", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white)),
                Text("way of learning", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white)),
                SizedBox(height: 35),
                WatchingButton(),
                SizedBox(height: 20),
                ReadingButton(),
              ],
            )
        )
      )
    );
  }
}

class WatchingButton extends StatelessWidget {
  const WatchingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 50,
        // margin: const EdgeInsets.only(top:315, bottom: 315, left: 50, right: 50),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white60),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.black26)
                    )
                )
            ),
            child: const Text("Watching!",
                style: TextStyle(color: Colors.black, fontSize: 25)),
            onPressed:() => {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WatchingPage())
              )
            }
        )
    );
  }
}

class ReadingButton extends StatelessWidget {
  const ReadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 50,
        // margin: const EdgeInsets.only(top:315, bottom: 315, left: 50, right: 50),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.black26)
                    )
                )
            ),
            child: const Text("Reading!",
                style: TextStyle(color: Colors.white, fontSize: 25)),
            onPressed:() => {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReadingPage())
              )
            }
        )
    );
  }
}