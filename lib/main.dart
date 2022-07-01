import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const FlutterBasicsExam());

class FlutterBasicsExam extends StatefulWidget {
  const FlutterBasicsExam({Key? key}) : super(key: key);

  @override
  State<FlutterBasicsExam> createState() => _FlutterBasicsExamState();
}

class _FlutterBasicsExamState extends State<FlutterBasicsExam> {
//TODO 3: Maak een random number generator.
  var random = Random();

//TODO 1: Maak een lijst met kattenfeiten waar je straks naar kan grijpen.
  List<String> factList = [
    //Fact 0
    'Katten kunnen 100 verschillende geluiden maken.',
    //Fact 1
    'Ieder jaar worden 4 miljoen katten gegeten in Azië.',
    //Fact 2
    'Het woord kat stamt van het Latijnse woord catus.',
    //Fact 3
    'Een kat kan ongeveer een topsnelheid van 50km/h behalen.',
    //Fact 4
    'Hoewel veel mensen het willen, is nyan cat geen echte katras.',
    //Fact 5
    '''Katten wrijven tegen mensen en objecten aan niet alleen om aanhankelijk 
    te zijn maar ook een geur achterlaten. De wangen, poten en staart 
    hebben geurklieren.'''
  ];

  //TODO 2: Maak een lijst met titels voor de kattenfeiten.
  List<String> factTitles = [
    'Katten en geluiden 📢',
    'Catilisious! 😐',
    'Definitie kat 🐈‍⬛',
    'Hoe snel is een kat? 🐈💨',
    'Internetsensatie Nyan cat 😻',
    'Smelly cat, Smeeelly cat 🤢',
  ];

  //TODO 11: Bonus --> Maak een lijst met verschillende achtergrondkleuren.
  List<Color> colorList = [
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    //TODO 4: Initialiseer de random number generator en schrijf dat naar een variabele.
    int nummer = random.nextInt(5);

    //TODO 5: Schrijf na de return de widgets die nodig zijn om jouw app te maken
    //TODO 6: Voeg een widget toe waarmee je een image kan tonen
    //TODO 7: Voeg een widget toe waarmee je de titel kan aangeven
    //TODO 8: Voeg een widget toe waarmee je de beschrijving van de feit kan aangeven
    //TODO 9: Voeg een knop onderaan het scherm toe die de volle breedte neemt
    //TODO 10: Voeg een achtergrond kleur toe aan de appbar, scaffold en knop
    //TODO 11: Gebruik de random nummer om een willekeurig plaatje te selecteren
    //TODO 12: Gebruik de random nummer om de juiste naam en titel uit de arrays te pakken
    //TODO 13: Geef de knop een anonieme functie en de setState method. Update hier je random nummer
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animal Facts'),
          backgroundColor: colorList[nummer],
          elevation: 0,
        ),
        backgroundColor: colorList[nummer],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/$nummer.png'),
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        factTitles[nummer],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(factList[nummer]),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              nummer = random.nextInt(5);
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => colorList[nummer]),
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: const Text(
                            'Next fact',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ])
              ]),
        ),
      ),
    );
  }
}
