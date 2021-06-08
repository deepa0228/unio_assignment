import 'package:flutter/material.dart';
import 'package:project/model/events.dart';

class ItemCard extends StatelessWidget {
  final Event event;
  final Function press;
  const ItemCard({
    Key key,
    this.event,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
             
              decoration: BoxDecoration(
                color: event.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${event.id}",
                child: Image.asset(event.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20/ 4),
            child: Text(
           
              event.title,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Text(
            event.date,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
