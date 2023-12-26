import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:laughter_therapy/Models/api_model.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  FetchCountry() async {
    List<CountryModel> AllCountryData = [];
    String Api = "https://restcountries.com/v3.1//all";
    http.Response response = await http.get(Uri.parse(Api));

    if (response.statusCode == 200) {
      String data = response.body;

      List<Map<String,dynamic>> fetchApiData = jsonDecode(data);
      List CountryData = fetchApiData[0] as List;
      AllCountryData = CountryData.map((e) => CountryModel(
          altSpellings: e['altSpellings'],
          area: e['area'],
          capital: e['capital'],
          capitalInfo: e['capitalInfo'],
          car: e['car'],
          flag: e['flag'],
          currencies: e['currencies'],
          independent: e['independent'],
          languages: e['languages'],
          cca2: e['cca2'],
          cca3: e['cca3'],
          ccn3: e['ccn3'],
          coatOfArms: e['coatOfArms'],
          flags: e['flags'],
          name: e['name'],
          continents: e['continents'],
          demonyms: e['demonyms'],
          idd: e['idd'],
          region: e['region'],
          maps: e['maps'],
          subregion: e['subregion'],
          landlocked: e['landlocked'])).toList();
    }
    return AllCountryData;
  }
}
