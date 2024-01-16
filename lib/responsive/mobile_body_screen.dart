import 'package:flutter/material.dart';

class MobileBodyScreen extends StatelessWidget {
  const MobileBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color cAppbar = const Color(0xffe04b5a);
    Color cBack = const Color(0xffe49756);
    Color cTopDecor = const Color(0xff9a4c68);
    Color cItems = const Color(0xff5b305a);

    return Scaffold(
      backgroundColor: cBack,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "M O B I L E",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: cAppbar,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            ),
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
    );
  }
}
