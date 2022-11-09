import 'package:flutter/material.dart';
import 'package:skill/screens/add_skill/widgets/add_skill_form.dart';
import 'package:skill/screens/add_skill/widgets/i_can_be_widget.dart';
import 'package:skill/screens/add_skill/widgets/upload_image.dart';

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
          Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8, //or null
                  decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
                ),
              )
          )
        ],
      ),
    );
  }
}
