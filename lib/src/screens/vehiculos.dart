import 'package:flutter/material.dart';
import 'package:innotekmobil_1/src/perfil/perfil.dart';
import 'package:innotekmobil_1/src/screens/acerca.dart';
import 'package:innotekmobil_1/src/screens/login.dart';
import 'package:innotekmobil_1/src/screens/mapsrutas.dart';
import 'package:innotekmobil_1/src/screens/paraderos.dart';
import 'package:innotekmobil_1/src/screens/rutas.dart';


class Vehiculos extends StatefulWidget {
  Vehiculos ({Key?  key}) :super (key: key);

  _VehiculosState createState ()=> _VehiculosState ();
}

class _VehiculosState extends State <Vehiculos>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Nuestra empresa',
        theme: ThemeData(primarySwatch: Colors.blue,
        ),
        home: PagTresPage(),
    );
  }
}
class PagTresPage extends StatelessWidget {
  @override
  Widget build ( BuildContext context){
    return  Scaffold(
      body: Stack(
        children: <Widget> [
          Center(
            child: SingleChildScrollView(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
      children: [
        SizedBox(
          height: 65,
          child: ListTile(
            trailing: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 15),
              
            ),
            title: Text(
              'Bus 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Campanario'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomLeft,
          child: Text('Tiempo transcurrido, 00:01:35:20'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 1.4,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Icon(Icons.bus_alert),
              Text('Alexander / AAA-123'),
      ],
          ),
        ),
        SizedBox(
          height: 65,
          child: ListTile(
            trailing: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 15),
            ),
            title: Text(
              'Bus 2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Terminal'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomLeft,
          child: Text('Tiempo transcurrido: 00:01:20:20'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 1.4,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Icon(Icons.bus_alert),
              Text('Cristian / BBB-323'),
      ],
          ),
        ),
        SizedBox(
          height: 65,
          child: ListTile(
            trailing: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 15),
            ),
            title: Text(
              'Bus 3',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Esmeralda'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomLeft,
          child: Text('Tiempo transcurrido: 00:02:35:27'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 1.4,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Icon(Icons.bus_alert),
              Text('Rodrigo / MMM-333'),
      ],
          ),
        ),
        SizedBox(
          height: 65,
          child: ListTile(
            trailing: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 15),
            ),
            title: Text(
              'Bus 4',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Chune'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomLeft,
          child: Text('Tiempo transcurrido: 00:03:00:00'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 1.4,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Icon(Icons.bus_alert),
              Text('Mauricio / CCC-989'),
            ],  
          ), 
        ),
        SizedBox(
          height: 65,
          child: ListTile(
            trailing: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 15),
            ),
            title: Text(
              'Bus 5',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Maria Occidente'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomLeft,
          child: Text('Tiempo transcurrido: 00:01:35:27'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 1.4,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            children: [
              Icon(Icons.bus_alert),
              Text('Alonso / DDD-363'),
            ],
          ),
        ), 
      ],
    ),
            )
            ),
          ),
  ]
  ),

  //MENU 
  drawer:  Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(50) ,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYWwAEKblh03Nj5vkzWm9dY0nBzTPEfMvR4I-5_2CAebDNHnlkUxz8opfscOsNDPqkz94&usqp=CAU"),
              ),
              
              ListTile(
                title: Text("Perfil de usuario", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20) ,),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Perfil())
                  );
                },
              ),
              ListTile(
                title: Text("Iniciar session"),
                leading: Icon(Icons.person),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginPage())
                  );
                },
              ),
              ListTile(
                title: Text("Rutas"),
                leading: Icon(Icons.map),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Rutas())
                  );
                },
                
              ),
              ListTile(
                title: Text("Paraderos"),
                leading: Icon(Icons.nature_people),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Paraderos())
                  );
                  
                },
                
              ),
              ListTile(
                title: Text("Vehiculos"),
                leading: Icon(Icons.bus_alert_outlined),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Vehiculos())
                  );
                  
                },
              ),
              ListTile(
                title: Text("Acerca de"),
                leading: Icon(Icons.warning),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Acerca())
                  );
                  
                },
              ),
              ListTile(
                title: Text("Mapas"),
                leading: Icon(Icons.map),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => DeliveryScreen())
                  );
                  
                },
              ),
              SizedBox(height: 20),
              
              ListTile(
                title: Text("Cerrar session"),
                leading: Icon(Icons.power_settings_new),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginPage())
                  );
                  
                },
              ), 
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text ("Vehiculos"),
      ),
//FIN DE MENU
);
}
}