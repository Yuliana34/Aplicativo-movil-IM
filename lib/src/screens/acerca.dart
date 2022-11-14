import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Acerca extends StatefulWidget {
  Acerca ({Key?  key}) :super (key: key);

  _AcercaState createState ()=> _AcercaState ();
}

class _AcercaState extends State <Acerca>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text ("Acerca de nuestra empresa") ,
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column (
          children: <Widget>[
            _Card(),
            _Card2(),
            _Card4(),
            _Card5()

          ],
        ),
      ) ,
    )
  );
  }
  
 Widget _Card() {
  return Card (
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
            
            Text("Nueva imagen corporativa:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox( height: 15,),
            Text("Enero, 13, 2022 Con en fin de ofecer a nuestros usuarios del transporte público hemos decidido incorporar mejoras en nuestras prestaciones, junto con INNO-TEK MOBIL queremos brindar un servicio de calidad para la comodidad de nuestra empresa y de los usuarios.")
          ]
      ),
    ),
  );
 }

 Widget _Card2() {
  return Card (
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
            Text("Nuestros servicios:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox( height: 15,),
            Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage ("https://media.istockphoto.com/photos/blue-bus-moving-on-the-road-in-city-in-early-morning-picture-id1371319562?b=1&k=20&m=1371319562&s=170667a&w=0&h=-gxPhtT_eeG3x7myYiYHkC0yGyZWRWY53z4UnL_UkfQ="),
              fit: BoxFit.cover
              )
            ),
          ),
          SizedBox( height: 15,),
            Text("Servicio Publico."),
          SizedBox( height: 25,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage ("https://media.istockphoto.com/photos/two-white-buses-traveling-on-the-asphalt-road-in-rural-landscape-at-picture-id1161674685?k=20&m=1161674685&s=612x612&w=0&h=jCKyjjtjBgnFUdSuteZ_2Yo2psROytgdZZr338GXFCo="),
              fit: BoxFit.cover
              )
            ),
          ),
          SizedBox( height: 15,),
            Text("Servicio Intermunicipal."),    
        ]
      ),
    ),
  );
 }

 Widget _Card4() {
  return Card (
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
            
            Text("Calificaciones de nuestro servicio:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox( height: 15,),
            
          ListTile(
                title: Text("Buen servicio, espero que con la nueva implementacion mejore mucho mas"),
                leading: Icon(Icons.person),
                onTap: (){
                },
              ), 
          ListTile(
                title: Text("Exelente servicio, me parece genial la nueva implementacion"),
                leading: Icon(Icons.person),
                onTap: (){
                },
              ),
          ListTile(
                title: Text("Me parece exelente que incluyan nuevas cosas en el servicio"),
                leading: Icon(Icons.person),
                onTap: (){
                },
              ),  
        ]
      ),
    ),
  );
 }
 //Calificacion
 Widget _Card5() {
  return Card (
    elevation: 10,
    child: Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Text("Califica Nuestro Servicio:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox( height: 15,),
        RatingBar.builder(
          initialRating: 7,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 12),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ) 
        ]
        ),
      ),
    );
  }

}

