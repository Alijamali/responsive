import 'package:flutter/material.dart';

class DesktopBodyScreen extends StatelessWidget {
  const DesktopBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color cAppbar = const Color(0xff220e24);
    Color cBack = const Color(0xff639cd9);
    Color cTopDecor = const Color(0xff5454c5);
    Color cItems = const Color(0xff5b305a);

    return Scaffold(
      backgroundColor: cBack,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "D E S K T O P",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: cAppbar,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 250,
                      color: cTopDecor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              color: const Color(0xffe49756),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 110,
                            color: cItems,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
