import 'package:flutter/material.dart';
import 'package:innotekmobil_1/src/screens/registro.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Transform.translate(
              offset: Offset(0, -60),
              child: Center(
                  child: SingleChildScrollView(
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
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: "Usuario:"),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Contraseña:",
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 40),
                        RaisedButton(
                          color: Color.fromARGB(224, 10, 129, 226),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          textColor: Colors.white,
                          onPressed: () => _Login(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Iniciar session"),
                              if (_loading)
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: const EdgeInsets.only(left: 20),
                                  child: CircularProgressIndicator(),
                                )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '¿No estas registrado?',
                            ),
                            FlatButton(
                                textColor: Colors.blue,
                                child: Text("Registrarse"),
                                onPressed: ()=> {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>Registro())
                                    )
                                }
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )))
        ],
      ),
    );
  }

  void _Login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });

      
    }
  }

  void _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/registro',
    );
  }
}