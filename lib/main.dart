import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var questions = ["Your favorite Vehicle", "Your favorite color"];
  var answers = [
    ["Car", "Bike", "Scooter"],
    ["blue", "red", "pink"]
  ];
  var qIdx = 0;
  void clicked() {
    // ignore: avoid_print
    setState(() {
      qIdx = (qIdx + 1) % questions.length;
    });
    // print('Button clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        // backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Question(questions[qIdx]),
            ElevatedButton(
              onPressed: clicked,
              child: Answer(answers[qIdx][0]),
            ),
            ElevatedButton(
              onPressed: clicked,
              child: Answer(answers[qIdx][1]),
            ),
            ElevatedButton(
              onPressed: clicked,
              child: Answer(answers[qIdx][2]),
            ),
          ],
        ),
        // Column(
        //   children: const [
        //     Text('The question 2!'),
        //     ElevatedButton(onPressed: null, child: Text('data 1')),
        //     ElevatedButton(onPressed: null, child: Text('data 2')),
        //     ElevatedButton(onPressed: null, child: Text('data 3')),
        //   ],
        // ),
        // backgroundColor: const Color.fromARGB(0, 1, 2, 218),
      ),
    );
  }
}
