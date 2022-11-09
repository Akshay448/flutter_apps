import 'package:flutter/material.dart';
import 'package:my_app/screens/add_skill/add_skill.dart';
import 'package:my_app/screens/details/detail.dart';
import 'package:my_app/widgets/search_widget.dart';
import 'package:my_app/widgets/show_skiller_widget.dart';
import 'package:my_app/widgets/skill_categories_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'SKILL'),
      // home: AddSkill(),
      // home: Detail(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              // search widget
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Search(),
                  ],
                ),
              ),
              // Icon(Icons.location_on_outlined, size: 50, color: Theme.of(context).primaryColor),
              // skill categories horizontal
              Container(
                height: 50,
                margin: EdgeInsets.all(10),
                child: SkillCategories(),
              ),
              // grid view for list of skillers
              Container(
                margin: EdgeInsets.all(10),
                height: 500,
                // color: Colors.greenAccent,
                child: GridView.builder(

                  itemCount: 100,
                  itemBuilder: (context, index) => ShowSkiller(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}