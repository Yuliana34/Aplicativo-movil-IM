import 'package:flutter/material.dart';
import 'package:innotekmobil_1/src/screens/mapsrutas.dart';


class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

 _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool _loading = false;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Form(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(224, 10, 129, 226),
                  Color.fromARGB(255, 32, 148, 221),
                ],
              ),
            ),
          ),
          SizedBox(
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.white),
            ),
            height: kToolbarHeight + 25,
          ),
          Center(
            child: SingleChildScrollView(
              child: Transform.translate(offset: Offset (0, -30),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
                 margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 260, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      TextFormField(
                          decoration: InputDecoration(labelText: "Nombres:"),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Apellidos:"),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Tipo de documento:"),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Numero de documento:"),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Telefono:"),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Correo electronico:"),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Contraseña:"),
                          obscureText: true,
                        ),
                        SizedBox(height: 10),
                        RaisedButton(       
                          color: Color.fromARGB(224, 10, 129, 226), 
                          padding: const EdgeInsets.symmetric(vertical: 15),               
                          textColor: Colors.white,
                          child: Text ("Registrarse"),
                          onPressed: () =>{
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => DeliveryScreen()))
                             
                            }
                        ),
                        SizedBox(
                          height: 20,
                        ),
                    ],
                  )
                ), 
              ),
            ),
            )
          )
        ]
      )
      )
    );


  
  }
  
  _Registro(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }}
}
