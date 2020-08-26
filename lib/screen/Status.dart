import 'package:flutter/material.dart';
import '../reusable/Wcards.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wcards(
            "My Status",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdx3J1USJR3F1zCYk6gE8kHaZY1HAXpfNkveKdTWCsqcC5YI&s",
            "Tap to add status"),
        Divider(),
        Heading("Recent updates"),
        Wcards(
            messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        Wcards(
            messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        Divider(),
        Heading("Today"),
        Wcards(
            messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        Wcards(
            messageData[3].name, messageData[3].imageUrl, messageData[3].time)
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;

  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, top: 5.0),
        child: Text(heading,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}
