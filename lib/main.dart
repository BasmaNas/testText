import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // list of text that will be view
  List _text = ['', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return TextView(
                      text: _text[index],
                      index: (index + 1).toString(),
                    );
                  }))
        ])));
  }
}

class TextView extends StatelessWidget {
  TextView({@required this.text, @required this.index});
  String text;
  String index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            index,
            style: TextStyle(fontSize: 30),
          ),
          Container(
            //change height
            height: 50,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
