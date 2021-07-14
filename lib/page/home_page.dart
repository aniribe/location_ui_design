import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_ui_design/widgets/locations_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: buildAppBar(),
      bottomNavigationBar: BuildBottomNavigationBar(),
      body: LocationsWidget(),
    );
  }
}

Widget buildAppBar() => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text('INTERESTS'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.location_on),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    );

class BuildBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.pin_drop), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_location), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
      ],
    );
  }
}
