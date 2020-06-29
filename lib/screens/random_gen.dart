import 'package:flutter/material.dart';
import 'package:positivesurvival/screens/story_detail.dart';

class RandomGen extends StatefulWidget {
  @override
  _RandomGenState createState() => _RandomGenState();
}

class _RandomGenState extends State<RandomGen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(100),
        child: GestureDetector(
          child: Text('Click to get a Story to empower!'),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => StoryDetail())),
        ),
      ),
    );
  }
}
