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
      title: 'Flutter Hello World',
      home: MyHomePage(title: 'Flutter Demo Inicio'),
      debugShowCheckedModeBanner: false,
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
  String selectedArt = "Ninguno seleccionado";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text("Selecciona un articulo: $selectedArt"),
        const SizedBox(height: 30),
        SizedBox(
          width: 250,
          child: RadioMenuButton(
            value: "Peluche",
            groupValue: selectedArt,
            onChanged: (selectedValue) {
              setState(() => selectedArt = selectedValue!);
            },
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                elevation: const MaterialStatePropertyAll(2),
                backgroundColor: const MaterialStatePropertyAll(Colors.white)),
            child: Row(
              children: [
                const SizedBox(width: 10),
                SizedBox(
                  height: 60,
                  child: Image.asset("images/peluche.jpg"),
                ),
                const SizedBox(width: 10),
                const Text("Peluche"),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 250,
          child: RadioMenuButton(
            value: "Mochila",
            groupValue: selectedArt,
            onChanged: (selectedValue) {
              setState(() => selectedArt = selectedValue!);
            },
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                elevation: const MaterialStatePropertyAll(2),
                backgroundColor: const MaterialStatePropertyAll(Colors.white)),
            child: Row(
              children: [
                const SizedBox(width: 10),
                SizedBox(
                  height: 60,
                  child: Image.asset("images/mochila.jpeg"),
                ),
                const SizedBox(width: 10),
                const Text("Mochila"),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 250,
          child: RadioMenuButton(
            value: "Pin",
            groupValue: selectedArt,
            onChanged: (selectedValue) {
              setState(() => selectedArt = selectedValue!);
            },
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                elevation: const MaterialStatePropertyAll(2),
                backgroundColor: const MaterialStatePropertyAll(Colors.white)),
            child: Row(
              children: [
                const SizedBox(width: 10),
                SizedBox(
                  height: 60,
                  child: Image.asset("images/pin.jpg"),
                ),
                const SizedBox(width: 10),
                const Text("Pin"),
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
