import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void AddCounter() {
    setState(() {
      counter++;
    });
  }

  void SubtractCounter() {
    setState(() {
      counter--;
    });
  }

  void changeCounterToZero() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
            ElevatedButton(
              onPressed:( )
              {
                SubtractCounter(); // Делаем что-нибудь, когда кнопка нажата.
              },
              child: Text('-'),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                       )
          ),

            ElevatedButton(
                onPressed:( )
                {
                  AddCounter(); // Делаем что-нибудь, когда кнопка нажата.
                },
                child: Text('+'),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                )
            ),

],
),

            TextButton(
              onPressed: (
                  ) {
                changeCounterToZero();
              },
              child: Text('Сбросить'),
              style: TextButton.styleFrom(
                foregroundColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                textStyle: TextStyle(fontSize: 13),
                padding: EdgeInsets.all(20),
              ),
            ),])
    )
      );



  }
}
