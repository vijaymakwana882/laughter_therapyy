import 'package:flutter/material.dart';
import 'package:laughter_therapy/Providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../Models/api_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CountryModel> AllCountryData = [];

  // List countries = [];
  // List filteredCountries = [];
  // bool isSearching = false;
  //
  // getCountries() async {
  //   var response = await Dio().get('https://restcountries.eu/rest/v2/all');
  //   return response.data;
  // }
  //
  // @override
  // void initState() {
  //   getCountries().then((data) {
  //     setState(() {
  //       countries = filteredCountries = data;
  //     });
  //   });
  //   super.initState();
  // }
  //
  // void _filterCountries(value) {
  //   setState(() {
  //     filteredCountries = countries
  //         .where((country) =>
  //             country['name'].toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  tileColor: Colors.grey,
                  style: ListTileStyle.list,
                  leading: Icon(Icons.person),
                  title: Text(
                    'Profile',
                  ),
                  subtitle: Text('update profile'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  tileColor: Colors.grey,
                  style: ListTileStyle.list,
                  leading: Icon(Icons.location_city),
                  title: Text(
                    'Recent Location',
                  ),
                  subtitle: Text('find location'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  tileColor: Colors.grey,
                  style: ListTileStyle.list,
                  leading: Icon(Icons.local_activity),
                  title: Text(
                    'Your activity',
                  ),
                  subtitle: Text('routs history'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  tileColor: Colors.grey,
                  style: ListTileStyle.list,
                  leading: Icon(Icons.security),
                  title: Text(
                    'Security & Privacy',
                    style: TextStyle(),
                  ),
                  subtitle: Text('change Passwords'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  tileColor: Colors.grey,
                  style: ListTileStyle.list,
                  leading: Icon(Icons.contact_page_outlined),
                  title: Text(
                    'About',
                  ),
                  subtitle: Text('Contact us'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Country name '),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context,listen: false).Changetheme();
            },
            icon: Icon(
              Icons.blur_circular_outlined,
              size: 28,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('data is ${AllCountryData.length}'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(AllCountryData);
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}
