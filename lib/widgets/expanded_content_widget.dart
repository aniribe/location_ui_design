import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_ui_design/model/location.dart';
import 'package:location_ui_design/widgets/stars_widget.dart';

class ExpandedContentWidget extends StatelessWidget {
  final Location location;

  const ExpandedContentWidget({@required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(location.addressLine1),
          SizedBox(height: 8),
          buildAddressRating(location: location),
          SizedBox(height: 12),
          buildReview(location: location)
        ],
      ),
    );
  }
}

Widget buildAddressRating({@required Location location}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          location.addressLine2,
          style: TextStyle(color: Colors.black45),
        ),
        StarsWidget(stars: location.starRating),
      ],
    );

Widget buildReview({@required Location location}) => Row(
      children: location.reviews
          .map((review) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage(review.urlImage),
                ),
              ))
          .toList(),
    );
