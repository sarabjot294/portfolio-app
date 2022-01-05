import 'package:flutter/material.dart';
import 'package:portfolio/config/data/projects.dart';
import 'package:portfolio/widgets/custom_card_widget.dart';
import 'package:portfolio/widgets/custom_heading_widget.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomHeadingWidget(
              heading: 'Projects',
            )),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: ResponsiveWidget(
            largeScreen: GridView.count(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.2),
              children: List.generate(projects.length,
                  (index) => CustomCardWidget(projects[index], 0)),
            ),
            smallScreen: ListView.builder(
                //scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: projects.length,
                itemBuilder: (context, index) => CustomCardWidget(
                    projects[index],
                    (index == projects.length - 1 ? 16.0 : 0))),
          ),
        ),
      ],
    );
  }
}
