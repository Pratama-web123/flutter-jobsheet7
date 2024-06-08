import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Bagus',
    'Agus',
    'budi',
    'Rudi',
    'Nurul',
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
  ];
  int index = 0;
  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.lightBlue[50],
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, offset: Offset(60, 30))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Apa kabar',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: listWarna[index % listWarna.length]),
            )
          ],
        ));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});
  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Flutter Jobsheet 7',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halo Dunia'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: teksUtama,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: const Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      )));
}
