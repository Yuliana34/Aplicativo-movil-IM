import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:innotekmobil_1/src/perfil/perfil.dart';
import 'package:innotekmobil_1/src/screens/acerca.dart';
import 'package:innotekmobil_1/src/screens/login.dart';
import 'package:innotekmobil_1/src/screens/maparadero.dart';
import 'package:innotekmobil_1/src/screens/mapsrutas.dart';
import 'package:innotekmobil_1/src/screens/rutas.dart';
import 'package:innotekmobil_1/src/screens/vehiculos.dart';

List _elements1 = [
  {'name': 'Matamoros', 'group': 'Paradero 1'},
  {'name': 'La Paz', 'group': 'Paradero 2'},
  {'name': 'Bello Horizonte', 'group': 'Paradero 3'},
  {'name': 'Bella Vista', 'group': 'Paradero 4'},
  {'name': 'Campanario', 'group': 'Paradero 5'},
  {'name': 'Barrio Bolivar', 'group': 'Paradero 6'},
  {'name': 'Esmeralda', 'group': 'Paradero 7'},
  {'name': 'Chune', 'group': 'Paradero 8'},
  {'name': 'Maria Occidente', 'group': 'Paradero 9'},

];

class Paraderos extends StatefulWidget {
  Paraderos ({Key?  key}) :super (key: key);

  _ParaderosState createState ()=> _ParaderosState ();
}

class _ParaderosState extends State <Paraderos>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Nuestra empresa',
        theme: ThemeData(primarySwatch: Colors.blue,
        ),
        home: PagDosPage(),
    );
  }
}
class PagDosPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paraderos',
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
          title: Text ("Paraderos en servicio"),
        ),
        //PARADERO1
        body: GroupedListView<dynamic, String>(
          elements: _elements1,
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
                      MaterialPageRoute(builder: (context)=> MapParadero())
                    );
                  },
                  title: Text(element['name']),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
        ),
        //PARADERO1
      ),
    );
  }
}