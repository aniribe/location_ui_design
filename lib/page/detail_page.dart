import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_ui_design/data/hero_tag.dart';
import 'package:location_ui_design/model/location.dart';
import 'package:location_ui_design/widgets/detailed_info_widget.dart';
import 'package:location_ui_design/widgets/hero_widget.dart';
import 'package:location_ui_design/widgets/lat_long_widget.dart';
import 'package:location_ui_design/widgets/reviews_widget.dart';

class DetailPage extends StatelessWidget {
  final Location location;
  final Animation animation;

  const DetailPage({@required this.location, @required this.animation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('INTERESTS'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          ),
          SizedBox(width: 10)
        ],
        leading: Icon(Icons.search_outlined),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox.expand(
                  child: HeroWidget(
                    tag: HeroTag.image(location.urlImage),
                    child: Image.asset(location.urlImage, fit: BoxFit.cover),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: LatLongWidget(location: location),
                ),
              ],
            ),
          ),
          DetailedInfoWidget(location: location),
          Expanded(
            flex: 5,
            child: ReviewsWidget(location: location, animation: animation),
          ),
        ],
      ),
    );
  }
}
