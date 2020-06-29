import 'dart:math';

import 'package:flutter/material.dart';
import 'package:positivesurvival/store/StoreBrain.dart';

import 'morale.dart';

class StoryDetail extends StatefulWidget {
  final int index;
  StoryDetail({Key key, this.index}) : super(key: key);

  @override
  _StoryDetailState createState() => _StoryDetailState();
}

class _StoryDetailState extends State<StoryDetail> {
  StoreBrain storeBrain = StoreBrain();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Text(
                    storeBrain.getStoryTitle(widget.index),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Text(
                    storeBrain.getStoryBoddy(widget.index),
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: MaterialButton(
                      color: Colors.teal,
                      splashColor: Colors.amber[200],
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  Morale(index: widget.index))),
                      child: Text(
                        storeBrain.getOptOne(widget.index),
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
