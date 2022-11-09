import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SKiLL"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Rakesh",
                    style: TextStyle(fontSize: 50),
                  ),
                  margin: EdgeInsets.all(20),
                ),
                Icon(
                  Icons.whatsapp_sharp,
                  size: 50,
                  color: Colors.green,
                ),
              ],
            ),
            Text(
              "Electrician",
              style: TextStyle(color: Colors.amber, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 20, 50, 0),
              child: Image.network('https://media-exp1.licdn.com/dms/image/C5103AQH-iqjbjx_8cQ/profile-displayphoto-shrink_800_800/0/1550759474455?e=1668038400&v=beta&t=68wHIkVdiOuXfx6BUuCPBQXCMnaM_fco4CL6o47j_48'),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("dfskjgbfdsghjbfsdjgkbsfgbfeskhgterotgfjkbjsbhufds fgeybs cegruybgsb ghisgjbsfegiuvejkvsejbv fku bgs bsehjv bfuv evb e", style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
