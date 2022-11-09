import 'package:flutter/material.dart';

import '../models/skill_categories.dart';

class SkillCategories extends StatelessWidget {
  const SkillCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: skill_categories.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          child: ElevatedButton(onPressed: () {}, child: Text(skill_categories[index])),
        );
      },
    );
  }
}