import 'package:flutter/material.dart';
import 'package:skill/widgets/star_display_widget.dart';

class ShowSkiller extends StatelessWidget {
  const ShowSkiller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1000,

      margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
      // color: Theme.of(context).primaryColor,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: const Offset(
              5.0,
              5.0,
            ), //Offset
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // row for ratings and comments
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconTheme(
                data: IconThemeData(
                  color: Colors.amber,
                  // size: 48,
                ),
                child: StarDisplay(value: 3),
              ),
              Icon(Icons.comment),
            ],
          ),
          // skiller photo
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.network('https://media-exp1.licdn.com/dms/image/C5103AQH-iqjbjx_8cQ/profile-displayphoto-shrink_800_800/0/1550759474455?e=1668038400&v=beta&t=68wHIkVdiOuXfx6BUuCPBQXCMnaM_fco4CL6o47j_48'),
          ),
          // skill and whatsapp
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // skiller name
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Akshay", style: Theme.of(context).textTheme.headline6),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Text("Electrician", style: Theme.of(context).textTheme.bodySmall),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.whatsapp_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
