import 'package:flutter/material.dart';
import 'package:travel_app/components/card_top.dart';
import 'package:travel_app/models/destination.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/square-1.png', 'Telaga', '200', 'Bandung'),
      Destination('assets/images/square-2.png', 'Sungai', '100', 'Konaha'),
      Destination('assets/images/square-3.png', 'Osaka', '150', 'Naruto'),
    ];
    return SizedBox(
      height: 75,
      child: ListView.builder(
          itemCount: destinations.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var dest = destinations[index];
            return CardTop(
                name: dest.name, image: dest.image, location: dest.location);
          }),
    );
  }
}
