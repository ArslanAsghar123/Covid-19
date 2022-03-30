import 'package:covid_app/model/WorldStats.dart';
import 'package:covid_app/service/http/api_req.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

import 'countries_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
  AnimationController(duration: const Duration(seconds: 3), vsync: this)
    ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  final colorList = [
    const Color(0xff4285f2),
    const Color(0xff1aa260),
    const Color(0xffde5246),
  ];

  @override
  Widget build(BuildContext context) {
    ApiHandler apiHandler = ApiHandler();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .01,
              ),
              FutureBuilder(
                  future: apiHandler.getAllData(),
                  builder: (context, AsyncSnapshot<WorldStats> snapshot) {
                    if (!snapshot.hasData) {
                      return Expanded(
                        flex: 1,
                        child: SpinKitFadingCircle(
                          color: Colors.white,
                          size: 50,
                          controller: _controller,
                        ),
                      );
                    } else {
                      return Column(
                        children: [
                          PieChart(
                            dataMap:  {
                              "Total": double.parse(snapshot.data!.cases.toString()),
                              "Recovered": double.parse(snapshot.data!.recovered.toString()),
                              "Death": double.parse(snapshot.data!.deaths.toString()),
                            },
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValuesInPercentage:  true
                            ),
                            chartRadius: MediaQuery
                                .of(context)
                                .size
                                .width / 3.2,
                            legendOptions:
                            const LegendOptions(legendPosition: LegendPosition.left),
                            animationDuration: const Duration(seconds: 1),
                            chartType: ChartType.ring,
                            colorList: colorList,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: MediaQuery
                                    .of(context)
                                    .size
                                    .height * .03),
                            child: Card(
                              child: Column(
                                children: [
                                  ReuseAbleCard(title: "Total", value: snapshot.data!.cases.toString()),
                                  ReuseAbleCard(title: "Deaths", value:snapshot.data!.deaths.toString()),
                                  ReuseAbleCard(title: "Recovered", value:snapshot.data!.recovered.toString()),
                                  ReuseAbleCard(title: "active", value:snapshot.data!.active.toString()),
                                  ReuseAbleCard(title: "critical", value:snapshot.data!.critical.toString()),
                                  ReuseAbleCard(title: "Today Death", value:snapshot.data!.todayDeaths.toString()),
                                  ReuseAbleCard(title: "Today Recovery", value:snapshot.data!.todayRecovered.toString()),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CountriesList()));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(child: Text("Track Countries")),
                            ),
                          )
                        ],
                      );
                    }
                  }),

            ],
          ),
        ),
      ),
    );
  }
}

class ReuseAbleCard extends StatelessWidget {
  String title, value;

  ReuseAbleCard({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      color: Colors.grey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
