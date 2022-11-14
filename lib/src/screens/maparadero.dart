import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:innotekmobil_1/src/perfil/perfil.dart';
import 'package:innotekmobil_1/src/screens/acerca.dart';
import 'package:innotekmobil_1/src/screens/login.dart';
import 'package:innotekmobil_1/src/screens/mapsrutas.dart';
import 'package:innotekmobil_1/src/screens/paraderos.dart';
import 'package:innotekmobil_1/src/screens/rutas.dart';
import 'package:innotekmobil_1/src/screens/vehiculos.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class MapParadero extends StatefulWidget{

  final LatLng PARADERO1 = LatLng(2.47507, -76.55504);//Matamoros
  final LatLng PARADERO2 = LatLng(2.47925, -76.56158); // La paz
  final LatLng PARADERO3 = LatLng(2.48443 , -76.56442); //Bello H
  final LatLng PARADERO4 = LatLng(2.47684, -76.57765);//Tablazo
  final LatLng PARADERO5 = LatLng(2.45607, 	 -76.59109); //Los Hoyos
  final LatLng PARADERO6 = LatLng(2.45245, -76.59707);//La estancia
  final LatLng PARADERO7 = LatLng(2.45107, -76.60008);//Hospital san jose
  final LatLng PARADERO8 = LatLng(2.44884, -76.60300);//Barrio bolivar 
  final LatLng PARADERO9 = LatLng(2.44665, -76.60287);//Parque caldas
  final LatLng PARADERO10 = LatLng(2.45885, -76.58640);///Parque yambitara
  final LatLng PARADERO11 = LatLng(2.44127, -76.60308);//SENA Centro
  final LatLng PARADERO12 = LatLng(2.43452, -76.60855);//Calle 13
  final LatLng PARADERO13 = LatLng(2.43503, -76.61128);//Plaza de toros
  final LatLng PARADERO14 = LatLng(2.43757, -76.61623);//Chirimia
  final LatLng PARADERO15 = LatLng(2.44510, -76.61548);//Esmeralda
  final LatLng PARADERO16 = LatLng(2.451026,-76.607585);// Terminal
  final LatLng PARADERO17 = LatLng(2.45863, -76.59399);// Campanario
  final LatLng PARADERO18 = LatLng(2.48127, -76.57266);// Bella vista
  final LatLng PARADERO19 = LatLng(2.50702, -76.58138);// La rejoya
  final LatLng PARADERO20 = LatLng(2.50353, -76.57649);// Los laureles
  final LatLng PARADERO21 = LatLng(2.48305, -76.56244);// SENA N
  final LatLng PARADERO22 = LatLng(2.48602, -76.56666);//Maxi pan
  final LatLng PARADERO23 = LatLng(2.48838, -76.57143);//Uvo
  final LatLng PARADERO24 = LatLng(2.45545, -76.59725);//Catay
  final LatLng PARADERO25 = LatLng(2.44879, -76.62340);//Chune
  final LatLng PARADERO26 = LatLng(2.45253, -76.63170);//Maria occidente
  final LatLng PARADERO27 = LatLng(2.45926, -76.63638);//Naranjos
  final LatLng PARADERO28 = LatLng(2.46385, -76.64046);//Ortigal
  final LatLng PARADERO29 = LatLng(2.44619, -76.61837);//Jose Maria Odando
  final LatLng PARADERO30 = LatLng(2.44510, -76.61548);//Esmeralda




@override
  _MapParaderoState createState()=> _MapParaderoState();
}

class _MapParaderoState extends State <MapParadero> {
  

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
              SizedBox(height: 70),
              
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
        title: Text ("Paraderos en servicio")
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
      ),
        ), );

    tmp.add(
      Marker( markerId: MarkerId("Paradero2"),position: widget.PARADERO2,
      infoWindow: InfoWindow(
        title: "Paradero La Paz",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
        
      )),);
    tmp.add(
      Marker( markerId: MarkerId("Paradero3"),position: widget.PARADERO3,
      infoWindow: InfoWindow(
        title: "Paradero Bello Horizonte",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),
      );
       tmp.add(
      Marker( markerId: MarkerId("Paradero3"),position: widget.PARADERO4,
      infoWindow: InfoWindow(
        title: "Paradero El Tablazo",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),
      );
    tmp.add(
      Marker( markerId: MarkerId("Paradero4"),position: widget.PARADERO5,
      infoWindow: InfoWindow(
        title: "Paradero Los Hoyos",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
    tmp.add(
      Marker( markerId: MarkerId("Paradero5"),position: widget.PARADERO6,
      infoWindow: InfoWindow(
        title: "Paradero El Recuerdo",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
    tmp.add(
      Marker( markerId: MarkerId("Paradero6"),position: widget.PARADERO7,
      infoWindow: InfoWindow(
        title: "Paradero La Estancia",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )));
    tmp.add(
      Marker( markerId: MarkerId("Paradero7"),position: widget.PARADERO8,
      infoWindow: InfoWindow(
        title: "Paradero Hospital San Jose",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
    tmp.add(
      Marker( markerId: MarkerId("Paradero8"),position: widget.PARADERO9,
      infoWindow: InfoWindow(
        title: "Paradero Barrio Bolivar",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
    tmp.add(
      Marker( markerId: MarkerId("Paradero10"),position: widget.PARADERO10,
      infoWindow: InfoWindow(
        title: "Paradero Parque Yambitara",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero11"),position: widget.PARADERO11,
      infoWindow: InfoWindow(
        title: "Paradero SENA Centro",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero12"),position: widget.PARADERO12,
      infoWindow: InfoWindow(
        title: "Paradero Parque Calle 13",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero13"),position: widget.PARADERO13,
      infoWindow: InfoWindow(
        title: "Paradero Plaza de Toros",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero14"),position: widget.PARADERO14,
      infoWindow: InfoWindow(
        title: "Paradero Chirimia",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero115"),position: widget.PARADERO15,
      infoWindow: InfoWindow(
        title: "Paradero Esmeralda",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero16"),position: widget.PARADERO16,
      infoWindow: InfoWindow(
        title: "Paradero Terminal",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero17"),position: widget.PARADERO17,
      infoWindow: InfoWindow(
        title: "Paradero Campanario",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero18"),position: widget.PARADERO18,
      infoWindow: InfoWindow(
        title: "Paradero Parque Bella Vista",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero19"),position: widget.PARADERO19,
      infoWindow: InfoWindow(
        title: "Paradero Parque La Rejoya",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero20"),position: widget.PARADERO20,
      infoWindow: InfoWindow(
        title: "Paradero Parque Los Laureles",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paraderow21"),position: widget.PARADERO21,
      infoWindow: InfoWindow(
        title: "Paradero SENA N",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero22"),position: widget.PARADERO22,
      infoWindow: InfoWindow(
        title: "Paradero Maxi Pan",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero23"),position: widget.PARADERO23,
      infoWindow: InfoWindow(
        title: "Paradero El Uvo",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero24"),position: widget.PARADERO24,
      infoWindow: InfoWindow(
        title: "Paradero Catay",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero25"),position: widget.PARADERO25,
      infoWindow: InfoWindow(
        title: "Paradero Chune",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero26"),position: widget.PARADERO26,
      infoWindow: InfoWindow(
        title: "Paradero Maria Occidente",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero27"),position: widget.PARADERO27,
      infoWindow: InfoWindow(
        title: "Paradero Los Naranjos",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero29"),position: widget.PARADERO28,
      infoWindow: InfoWindow(
        title: "Paradero Valle del Ortigal",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero30"),position: widget.PARADERO29,
      infoWindow: InfoWindow(
        title: "Paradero Maria Obando",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
      tmp.add(
      Marker( markerId: MarkerId("Paradero9"),position: widget.PARADERO30,
      infoWindow: InfoWindow(
        title: "Paradero Esmeralda",
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Paraderos()));
        }
      )),);
    
      

    return tmp;

    
  }


}

