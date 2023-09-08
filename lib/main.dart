import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //DropdownButton
  String selectedItem = "Uno";
  List<String> items = ["Uno", "Dos", "Tres"];
  void cambiarValor(String selectedItem) {
    setState(() {
      this.selectedItem = selectedItem;
    });
  }

  //PopupMenuButton
  String choice = "";
  void respuesta(String choice) {
    setState(() {
      this.choice = choice;
    });
  }

  //Switch
  bool activado = false;
  void changeState(bool activado) {
    setState(() {
      this.activado = activado;
    });
  }

  //Checkbox
  bool activado2 = false;
  void changeState2(bool activado2) {
    setState(() {
      this.activado2 = activado2;
    });
  }

  //RadioListTile
  String selectedOption = "";
  void changeOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Botones',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botones'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text(
                    "ElevatedButton",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 10,
              ),
              const ElevatedButton(
                  onPressed: null, child: Text("ElevatedButton")),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.edit),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(onPressed: () {}, child: const Text("Hola Mundo")),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.access_alarms,
                  color: Colors.blue,
                ),
                iconSize: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton(
                  value: selectedItem,
                  items: items.map((String item) {
                    return DropdownMenuItem<String>(
                        value: item, child: Text(item));
                  }).toList(),
                  onChanged: (selectedItem) {
                    cambiarValor(selectedItem!);
                  }),
              const SizedBox(
                height: 10,
              ),
              PopupMenuButton(
                onSelected: (String choice) {
                  respuesta(choice);
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Uno',
                      child: Text('Uno'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Dos',
                      child: Text('Dos'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Tres',
                      child: Text('Tres'),
                    ),
                  ];
                },
              ),
              Text(choice),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(103, 43, 100, 185),
                child: OverflowBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Musica",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Deportes",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Estudio",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color.fromARGB(255, 102, 6, 119)
                              .withOpacity(0.4);
                        }
                        return Colors.grey;
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.add_a_photo,
                      color: Color.fromARGB(255, 102, 6, 119))),
              const SizedBox(
                height: 10,
              ),
              Switch(value: activado, onChanged: changeState),
              const SizedBox(
                height: 10,
              ),
              Checkbox(
                  value: activado2,
                  onChanged: (activado2) {
                    changeState2(activado2!);
                  }),
              const SizedBox(
                height: 10,
              ),
              RadioListTile(
                  title: const Text("Uno"),
                  value: "Uno",
                  groupValue: selectedOption,
                  onChanged: (option) {
                    changeOption(option!);
                  }),
              RadioListTile(
                  title: const Text("Dos"),
                  value: "Dos",
                  groupValue: selectedOption,
                  onChanged: (option) {
                    changeOption(option!);
                  }),
              RadioListTile(
                  title: const Text("Tres"),
                  value: "Tres",
                  groupValue: selectedOption,
                  onChanged: (option) {
                    changeOption(option!);
                  }),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
