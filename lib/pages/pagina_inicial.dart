import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color corContainer = Colors.amber; // Variavél da cor

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // estrutura de página
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: corContainer,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 20,), //SizedBox da um padding
            ElevatedButton( // Cria um botão
              onPressed: (){
               setState(() { //ele muda o estado da variavél
                  corContainer = Colors.green;
               });
              }, 
              child: Text("Verde")
            ),
              SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                setState(() { // ele muda o estado da variavél
                  corContainer = Colors.red;
                });
              }, 
              child: Text("vermelho")
            ),
              SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                setState(() { // ele muda o estado da variavél
                  corContainer = Colors.blue;
                });
              }, 
              child: Text("Azul")
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
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
