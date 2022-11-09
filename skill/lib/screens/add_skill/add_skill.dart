import 'package:flutter/material.dart';
import 'package:my_app/screens/add_skill/widgets/add_skill_form.dart';
import 'package:my_app/screens/add_skill/widgets/upload_image.dart';

class AddSkill extends StatelessWidget {
  const AddSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SKILL"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ICanBe(),
          UploadImage(),
          AddSkillForm(),
        ],
      ),
    );
  }
}
