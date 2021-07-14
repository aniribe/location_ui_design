import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_ui_design/data/locations.dart';

import 'location_widget.dart';

class LocationsWidget extends StatefulWidget {
  @override
  _LocationsWidgetState createState() => _LocationsWidgetState();
}

class _LocationsWidgetState extends State<LocationsWidget> {
  final pageController = PageController(viewportFraction: 0.8);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index];

              return LocationWidget(location: location);
            },
            onPageChanged: (index) => setState(() => pageIndex = index),
          ),
        ),
        Text(
          '${pageIndex + 1}/${locations.length}',
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}