import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/data/projects.dart';
import 'package:portfolio/widgets/custom_card_widget.dart';
import 'package:portfolio/widgets/custom_heading_widget.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class AwardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomHeadingWidget(
            heading: 'Awards and Responsibilities',
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: ResponsiveWidget(
            largeScreen: GridView.count(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.3),
              children: List.generate(
                  awards.length, (index) => CustomCardWidget(awards[index], 0)),
            ),
            smallScreen: ListView.builder(
                //scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: awards.length,
                itemBuilder: (context, index) => CustomCardWidget(
                    awards[index], (index == awards.length - 1 ? 16.0 : 0))),
          ),
        ),
      ],
    );
  }
}
