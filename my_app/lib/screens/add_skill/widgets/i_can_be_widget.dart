import 'package:flutter/material.dart';

class ICanBe extends StatelessWidget {
  const ICanBe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.cancel_outlined, size: 50,),
          Text("I can be ", style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black), ),
          Icon(Icons.check_rounded, size: 50,),
        ],
      ),
    );
  }
}
