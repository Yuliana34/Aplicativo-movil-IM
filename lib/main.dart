
import 'package:flutter/material.dart';
import 'package:innotekmobil_1/src/screens/mapsrutas.dart';




void main () => runApp (INNOTEKMOBIL());

class INNOTEKMOBIL extends StatelessWidget {
  const INNOTEKMOBIL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "INNOTEKMOBIL",
        home: DeliveryScreen(),
    );
  }
}



