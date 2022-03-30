/// updated : 1648642625081
/// cases : 485746644
/// todayCases : 708992
/// deaths : 6158215
/// todayDeaths : 1689
/// recovered : 421170859
/// todayRecovered : 501463
/// active : 58417570
/// critical : 58548
/// casesPerOneMillion : 62317
/// deathsPerOneMillion : 790
/// tests : 6065504728
/// testsPerOneMillion : 768714.89
/// population : 7890447810
/// oneCasePerPeople : 0
/// oneDeathPerPeople : 0
/// oneTestPerPeople : 0
/// activePerOneMillion : 7403.58
/// recoveredPerOneMillion : 53377.31
/// criticalPerOneMillion : 7.42
/// affectedCountries : 227
class WorldStats {
  int? updated;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  int? casesPerOneMillion;
  double? deathsPerOneMillion;
  int? tests;
  double? testsPerOneMillion;
  int? population;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;
  int? affectedCountries;

  WorldStats(
      {this.updated,
        this.cases,
        this.todayCases,
        this.deaths,
        this.todayDeaths,
        this.recovered,
        this.todayRecovered,
        this.active,
        this.critical,
        this.casesPerOneMillion,
        this.deathsPerOneMillion,
        this.tests,
        this.testsPerOneMillion,
        this.population,
        this.oneCasePerPeople,
        this.oneDeathPerPeople,
        this.oneTestPerPeople,
        this.activePerOneMillion,
        this.recoveredPerOneMillion,
        this.criticalPerOneMillion,
        this.affectedCountries});

  WorldStats.fromJson(Map<String, dynamic> json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = this.updated;
    data['cases'] = this.cases;
    data['todayCases'] = this.todayCases;
    data['deaths'] = this.deaths;
    data['todayDeaths'] = this.todayDeaths;
    data['recovered'] = this.recovered;
    data['todayRecovered'] = this.todayRecovered;
    data['active'] = this.active;
    data['critical'] = this.critical;
    data['casesPerOneMillion'] = this.casesPerOneMillion;
    data['deathsPerOneMillion'] = this.deathsPerOneMillion;
    data['tests'] = this.tests;
    data['testsPerOneMillion'] = this.testsPerOneMillion;
    data['population'] = this.population;
    data['oneCasePerPeople'] = this.oneCasePerPeople;
    data['oneDeathPerPeople'] = this.oneDeathPerPeople;
    data['oneTestPerPeople'] = this.oneTestPerPeople;
    data['activePerOneMillion'] = this.activePerOneMillion;
    data['recoveredPerOneMillion'] = this.recoveredPerOneMillion;
    data['criticalPerOneMillion'] = this.criticalPerOneMillion;
    data['affectedCountries'] = this.affectedCountries;
    return data;
  }
}

// class WorldStats {
//   WorldStats({
//       int? updated,
//       int? cases,
//       int? todayCases,
//       int? deaths,
//       int? todayDeaths,
//       int? recovered,
//       int? todayRecovered,
//       int? active,
//       int? critical,
//       int? casesPerOneMillion,
//       int? deathsPerOneMillion,
//       int? tests,
//       double? testsPerOneMillion,
//       int? population,
//       int? oneCasePerPeople,
//       int? oneDeathPerPeople,
//       int? oneTestPerPeople,
//       double? activePerOneMillion,
//       double? recoveredPerOneMillion,
//       double? criticalPerOneMillion,
//       int? affectedCountries,}){
//     _updated = updated;
//     _cases = cases;
//     _todayCases = todayCases;
//     _deaths = deaths;
//     _todayDeaths = todayDeaths;
//     _recovered = recovered;
//     _todayRecovered = todayRecovered;
//     _active = active;
//     _critical = critical;
//     _casesPerOneMillion = casesPerOneMillion;
//     _deathsPerOneMillion = deathsPerOneMillion;
//     _tests = tests;
//     _testsPerOneMillion = testsPerOneMillion;
//     _population = population;
//     _oneCasePerPeople = oneCasePerPeople;
//     _oneDeathPerPeople = oneDeathPerPeople;
//     _oneTestPerPeople = oneTestPerPeople;
//     _activePerOneMillion = activePerOneMillion;
//     _recoveredPerOneMillion = recoveredPerOneMillion;
//     _criticalPerOneMillion = criticalPerOneMillion;
//     _affectedCountries = affectedCountries;
// }
//
//   WorldStats.fromJson(dynamic json) {
//     _updated = json['updated'];
//     _cases = json['cases'];
//     _todayCases = json['todayCases'];
//     _deaths = json['deaths'];
//     _todayDeaths = json['todayDeaths'];
//     _recovered = json['recovered'];
//     _todayRecovered = json['todayRecovered'];
//     _active = json['active'];
//     _critical = json['critical'];
//     _casesPerOneMillion = json['casesPerOneMillion'];
//     _deathsPerOneMillion = json['deathsPerOneMillion'];
//     _tests = json['tests'];
//     _testsPerOneMillion = json['testsPerOneMillion'];
//     _population = json['population'];
//     _oneCasePerPeople = json['oneCasePerPeople'];
//     _oneDeathPerPeople = json['oneDeathPerPeople'];
//     _oneTestPerPeople = json['oneTestPerPeople'];
//     _activePerOneMillion = json['activePerOneMillion'];
//     _recoveredPerOneMillion = json['recoveredPerOneMillion'];
//     _criticalPerOneMillion = json['criticalPerOneMillion'];
//     _affectedCountries = json['affectedCountries'];
//   }
//   int? _updated;
//   int? _cases;
//   int? _todayCases;
//   int? _deaths;
//   int? _todayDeaths;
//   int? _recovered;
//   int? _todayRecovered;
//   int? _active;
//   int? _critical;
//   int? _casesPerOneMillion;
//   int? _deathsPerOneMillion;
//   int? _tests;
//   double? _testsPerOneMillion;
//   int? _population;
//   int? _oneCasePerPeople;
//   int? _oneDeathPerPeople;
//   int? _oneTestPerPeople;
//   double? _activePerOneMillion;
//   double? _recoveredPerOneMillion;
//   double? _criticalPerOneMillion;
//   int? _affectedCountries;
// WorldStats copyWith({  int? updated,
//   int? cases,
//   int? todayCases,
//   int? deaths,
//   int? todayDeaths,
//   int? recovered,
//   int? todayRecovered,
//   int? active,
//   int? critical,
//   int? casesPerOneMillion,
//   int? deathsPerOneMillion,
//   int? tests,
//   double? testsPerOneMillion,
//   int? population,
//   int? oneCasePerPeople,
//   int? oneDeathPerPeople,
//   int? oneTestPerPeople,
//   double? activePerOneMillion,
//   double? recoveredPerOneMillion,
//   double? criticalPerOneMillion,
//   int? affectedCountries,
// }) => WorldStats(  updated: updated ?? _updated,
//   cases: cases ?? _cases,
//   todayCases: todayCases ?? _todayCases,
//   deaths: deaths ?? _deaths,
//   todayDeaths: todayDeaths ?? _todayDeaths,
//   recovered: recovered ?? _recovered,
//   todayRecovered: todayRecovered ?? _todayRecovered,
//   active: active ?? _active,
//   critical: critical ?? _critical,
//   casesPerOneMillion: casesPerOneMillion ?? _casesPerOneMillion,
//   deathsPerOneMillion: deathsPerOneMillion ?? _deathsPerOneMillion,
//   tests: tests ?? _tests,
//   testsPerOneMillion: testsPerOneMillion ?? _testsPerOneMillion,
//   population: population ?? _population,
//   oneCasePerPeople: oneCasePerPeople ?? _oneCasePerPeople,
//   oneDeathPerPeople: oneDeathPerPeople ?? _oneDeathPerPeople,
//   oneTestPerPeople: oneTestPerPeople ?? _oneTestPerPeople,
//   activePerOneMillion: activePerOneMillion ?? _activePerOneMillion,
//   recoveredPerOneMillion: recoveredPerOneMillion ?? _recoveredPerOneMillion,
//   criticalPerOneMillion: criticalPerOneMillion ?? _criticalPerOneMillion,
//   affectedCountries: affectedCountries ?? _affectedCountries,
// );
//   int? get updated => _updated;
//   int? get cases => _cases;
//   int? get todayCases => _todayCases;
//   int? get deaths => _deaths;
//   int? get todayDeaths => _todayDeaths;
//   int? get recovered => _recovered;
//   int? get todayRecovered => _todayRecovered;
//   int? get active => _active;
//   int? get critical => _critical;
//   int? get casesPerOneMillion => _casesPerOneMillion;
//   int? get deathsPerOneMillion => _deathsPerOneMillion;
//   int? get tests => _tests;
//   double? get testsPerOneMillion => _testsPerOneMillion;
//   int? get population => _population;
//   int? get oneCasePerPeople => _oneCasePerPeople;
//   int? get oneDeathPerPeople => _oneDeathPerPeople;
//   int? get oneTestPerPeople => _oneTestPerPeople;
//   double? get activePerOneMillion => _activePerOneMillion;
//   double? get recoveredPerOneMillion => _recoveredPerOneMillion;
//   double? get criticalPerOneMillion => _criticalPerOneMillion;
//   int? get affectedCountries => _affectedCountries;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['updated'] = _updated;
//     map['cases'] = _cases;
//     map['todayCases'] = _todayCases;
//     map['deaths'] = _deaths;
//     map['todayDeaths'] = _todayDeaths;
//     map['recovered'] = _recovered;
//     map['todayRecovered'] = _todayRecovered;
//     map['active'] = _active;
//     map['critical'] = _critical;
//     map['casesPerOneMillion'] = _casesPerOneMillion;
//     map['deathsPerOneMillion'] = _deathsPerOneMillion;
//     map['tests'] = _tests;
//     map['testsPerOneMillion'] = _testsPerOneMillion;
//     map['population'] = _population;
//     map['oneCasePerPeople'] = _oneCasePerPeople;
//     map['oneDeathPerPeople'] = _oneDeathPerPeople;
//     map['oneTestPerPeople'] = _oneTestPerPeople;
//     map['activePerOneMillion'] = _activePerOneMillion;
//     map['recoveredPerOneMillion'] = _recoveredPerOneMillion;
//     map['criticalPerOneMillion'] = _criticalPerOneMillion;
//     map['affectedCountries'] = _affectedCountries;
//     return map;
//   }
//
// }