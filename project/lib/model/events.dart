import 'package:flutter/material.dart';

class Event {
  final String image, title, description,date;
  final int noOfUsers, id;
  final Color color;
  Event({
    this.id,
    this.image,
    this.title,
    this.date,
    this.description,
    this.noOfUsers,
    this.color,
  });
}

List<Event> products = [
  Event(
      id: 1,
      title: "Cliffs of Moher",
      date: '2 Jun 2021',
      noOfUsers: 20,
      description: dummyText,
      image: "assets/images/event1.jpeg",
      color: Color(0xFF3D82AE)),
  Event(
      id: 2,
      title: "Buffercup",
      date: '7 Jun 2021',
      noOfUsers: 50,
      description: dummyText,
      image: "assets/images/event1.jpeg",
      color: Color(0xFFD3A984)),
  Event(
      id: 3,
      title: "Plantastic",
      date: '9 Jun 2021',
      noOfUsers: 100,
      description: dummyText,
      image: "assets/images/event1.jpeg",
      color: Color(0xFF989493)),
  Event(
      id: 4,
      title: "River Stone",
      date: '17 Jun 2021',
      noOfUsers: 115,
      description: dummyText,
      image: "assets/images/event1.jpeg",
      color: Color(0xFFE6B398)),
  Event(
      id: 5,
      title: "Big Days",
      date: '20 Jun 2021',
      noOfUsers: 124,
      description: dummyText,
      image: "assets/images/event1.jpeg",
      color: Color(0xFFFB7883)),
  Event(
    id: 6,
    title: "Dark Roast",
    date: '22 Jun 2021',
    noOfUsers: 129,
    description: dummyText,
    image: "assets/images/event1.jpeg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Event will at the hmv Underground at 333 Yonge Street on June 7, 2021 at 5:00 PM for an exclusive FAN MEET & GREET. Space is limited to the first 300 fans on a first come first served basis (as per the event protocol)";
