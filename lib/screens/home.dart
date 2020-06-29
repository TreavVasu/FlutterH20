import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:positivesurvival/store/StoreBrain.dart';

import 'bottom_wave_clipper.dart';
import 'story_detail.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

StoreBrain storeBrain = StoreBrain();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, item) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ClipPath(
                      clipper: BottomWaveClipper(),
                      child: Card(
                        color: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 10,
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    StoryDetail(index: item)));
                          },
                          title: Text(
                            storeBrain.getStoryTitle(item),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
