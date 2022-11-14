import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:innotekmobil_1/src/perfil/perfil.dart';
import 'package:innotekmobil_1/src/screens/acerca.dart';
import 'package:innotekmobil_1/src/screens/login.dart';
import 'package:innotekmobil_1/src/screens/paraderos.dart';
import 'package:innotekmobil_1/src/screens/rutas.dart';
import 'package:innotekmobil_1/src/screens/vehiculos.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class DeliveryScreen extends StatefulWidget{

  final LatLng PARADERO1 = LatLng(2.47507, -76.55504);//Matamoros
  final LatLng PARADERO2 = LatLng(2.47727, -76.55820);// Villa del viento
  final LatLng PARADERO3 = LatLng(2.47827, -76.56069);//Parque la paz
  final LatLng PARADERO4 = LatLng(2.47925, -76.56158); // La paz
  final LatLng PARADERO5 = LatLng(2.48443 , -76.56442); //Bello H
  
@override
  _DeliveryScreenState createState()=> _DeliveryScreenState();
}

class _DeliveryScreenState extends State <DeliveryScreen> {
  

  @override
  Widget build (BuildContext context){
    return Scaffold(
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
              SizedBox(height:10),
              
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
        title: Text ("INNO-TEK MOBIL")
        ),
//FIN DE MENU
//LOGICA DEL MAPA
    body: GoogleMap (
      initialCameraPosition: CameraPosition(
        target: widget.PARADERO1,
          zoom: 16,
        ),
        markers: _createMarkers(),
       
    ), 
    );   
}

  Set<Marker>_createMarkers (){
    var tmp = Set<Marker> ();

    tmp.add(
      Marker( markerId: MarkerId("Paradero1"),position: widget.PARADERO1,
      infoWindow: InfoWindow(
        title: "Paradero Matamoros",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )), );

    tmp.add(
      Marker( markerId: MarkerId("Paradero2"),position: widget.PARADERO2,
      infoWindow: InfoWindow(
        title: "Paradero Villa del norte",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
    tmp.add(
      Marker( markerId: MarkerId("Paradero3"),position: widget.PARADERO3,
      infoWindow: InfoWindow(
        title: "Paradero Parque la Paz",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),
      );
       tmp.add(
      Marker( markerId: MarkerId("Paradero3"),position: widget.PARADERO4,
      infoWindow: InfoWindow(
        title: "Paradero La Paz",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),
      );
    tmp.add(
      Marker( markerId: MarkerId("Paradero4"),position: widget.PARADERO5,
      infoWindow: InfoWindow(
        title: "Paradero Bello Horizonte",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);

      

    return tmp;

    
  }


}




