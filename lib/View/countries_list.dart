import 'package:covid_app/View/search_result.dart';
import 'package:covid_app/service/http/api_req.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountriesList extends StatefulWidget {
  const CountriesList({Key? key}) : super(key: key);

  @override
  State<CountriesList> createState() => _CountriesListState();
}

class _CountriesListState extends State<CountriesList> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries List"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: TextFormField(
                controller: textEditingController,
                onChanged: (val) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    hintText: "Enter Your country",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Expanded(
                child: FutureBuilder(
              future: ApiHandler().getCountries(),
              builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                if (!snapshot.hasData) {
                  return ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey.shade800,
                          highlightColor: Colors.grey.shade100,
                          child: Column(
                            children: [
                              ListTile(
                                title: Container(
                                  height: 10,
                                  width: 30,
                                  color: Colors.white,
                                ),
                                subtitle: Container(
                                  height: 10,
                                  width: 30,
                                  color: Colors.white,
                                ),
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        );
                      });
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        String name =
                            snapshot.data![index]["country"].toString();
                        if (textEditingController.text.isEmpty) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchResult(
                                        country: snapshot.data![index]
                                                ["country"]
                                            .toString(),
                                        active: snapshot.data![index]
                                            ["active"],
                                        recovered: snapshot.data![index]
                                            ["recovered"],
                                        deaths: snapshot.data![index]
                                            ["deaths"],
                                        cases: snapshot.data![index]["cases"],
                                        population: snapshot.data![index]
                                            ["population"],
                                        image: snapshot.data![index]["countryInfo"]["flag"],

                                      ),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(snapshot.data![index]["country"]
                                      .toString()),
                                  subtitle: Text(snapshot.data![index]["cases"]
                                      .toString()),
                                  leading: Image(
                                      height: 50,
                                      width: 50,
                                      image: NetworkImage(snapshot.data![index]
                                          ["countryInfo"]["flag"])),
                                ),
                              )
                            ],
                          );
                        } else if (name.toLowerCase().contains(
                            textEditingController.text.toLowerCase())) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchResult(
                                        country: snapshot.data![index]
                                        ["country"]
                                            .toString(),
                                        active: snapshot.data![index]
                                        ["active"],
                                        recovered: snapshot.data![index]
                                        ["recovered"],
                                        deaths: snapshot.data![index]
                                        ["deaths"],
                                        cases: snapshot.data![index]["cases"],
                                        population: snapshot.data![index]
                                        ["population"],
                                        image: snapshot.data![index]["countryInfo"]["flag"],

                                      ),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(snapshot.data![index]["country"]
                                      .toString()),
                                  subtitle: Text(
                                      snapshot.data![index]["cases"].toString()),
                                  leading: Image(
                                      height: 50,
                                      width: 50,
                                      image: NetworkImage(snapshot.data![index]
                                          ["countryInfo"]["flag"])),
                                ),
                              )
                            ],
                          );
                        } else {
                          return Container();
                        }
                      });
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
