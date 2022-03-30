import 'package:covid_app/View/main_screen.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  String country,image;
  int cases, deaths, active, population, recovered;

  SearchResult(
      {required this.country,
      required this.active,
      required this.recovered,
      required this.deaths,
      required this.cases,
      required this.population,
      required this.image});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.country),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey.shade800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.064),
                  child: Card(
                    child: Column(
                      children: [
                        ReuseAbleCard(title: "active", value: widget.active.toString()),
                        ReuseAbleCard(title: "Recovered", value:widget.recovered.toString()),
                        ReuseAbleCard(title: "deaths", value:widget.deaths.toString()),
                        ReuseAbleCard(title: "cases", value:widget.cases.toString()),
                        ReuseAbleCard(title: "Today population", value:widget.population.toString()),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(backgroundImage: NetworkImage(widget.image),radius: 50,),
                          ],
            ),
          ],
        ),
      ),
    );
  }
}
