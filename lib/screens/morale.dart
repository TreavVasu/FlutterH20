import 'package:flutter/material.dart';
import 'package:positivesurvival/store/StoreBrain.dart';

class Morale extends StatefulWidget {
  final int index;
  Morale({Key key, this.index}) : super(key: key);

  @override
  _MoraleState createState() => _MoraleState();
}

class _MoraleState extends State<Morale> {
  StoreBrain storeBrain = StoreBrain();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Text(
            storeBrain.getMorale(widget.index),
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
