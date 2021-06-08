import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/model/events.dart';
import 'package:project/ui/details_scr/details.dart';

import 'items/event_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: mainColor,),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Center(child: Text('Events')),
        // leading: Icon(Icons.)
        actions: [
          IconButton(color: Colors.white,onPressed: (){},
          icon: Icon(Icons.notifications),iconSize: 25,),
          IconButton(color: Colors.white,onPressed: (){},
          icon: Icon(Icons.person),iconSize: 25,),
        ],
        
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Events",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      event: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              event: products[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    ),

    );
  }
}
  
