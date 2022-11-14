import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:innotekmobil_1/src/perfil/perfil.dart';
import 'package:innotekmobil_1/src/screens/Rutas/ruta1.dart';
import 'package:innotekmobil_1/src/screens/acerca.dart';
import 'package:innotekmobil_1/src/screens/login.dart';
import 'package:innotekmobil_1/src/screens/mapsrutas.dart';
import 'package:innotekmobil_1/src/screens/paraderos.dart';
import 'package:innotekmobil_1/src/screens/vehiculos.dart';



List _elements = [
  {'name': 'Matamoros - Moscopan', 'group': 'RUTA 1'},
  {'name': 'Matamoros - Lomas de granada', 'group': 'RUTA 2'},
  {'name': 'Figueroa - Aidalucia', 'group': 'RUTA 4'},
  {'name': 'Matamoros - Puelenje', 'group': 'RUTA 5'},
  {'name': 'Las palmas - Matamoros', 'group': 'RUTA 6'},
  {'name': 'Tendidos - Rio Blanco', 'group': 'RUTA 7'},
  {'name': 'Puelenje - Antiguas', 'group': 'RUTA 8'},
  {'name': 'Tendidos - Penal', 'group': 'RUTA 9'},

];
class Rutas extends StatefulWidget {
  Rutas ({Key?  key}) :super (key: key);

  _RutasState createState ()=> _RutasState ();
}

class _RutasState extends State <Rutas>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Nuestra empresa',
        theme: ThemeData(primarySwatch: Colors.blue,
        ),
      home: PagCuatroPage(),
    );
  }
}

class PagCuatroPage extends StatelessWidget {
   @override
  Widget build ( BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
          title: Text('Rutas'),
        ),
        body: GroupedListView<dynamic, String>(
          elements: _elements,
          groupBy: (element) => element['group'],
          groupComparator: (value1, value2) => value2.compareTo(value1),
          itemComparator: (item1, item2) =>
              item1['name'].compareTo(item2['name']),
          order: GroupedListOrder.DESC,
          useStickyGroupSeparators: true,
          groupSeparatorBuilder: (String value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          itemBuilder: (c, element) {
            return Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Icon(Icons.account_circle),
                  onTap: (){
                    Navigator.push (
                      context,
                      MaterialPageRoute(builder: (context)=> RutaUno())
                    );
                  },
                  title: Text(element['name']),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}