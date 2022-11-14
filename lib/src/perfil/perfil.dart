import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:innotekmobil_1/src/screens/login.dart';


class Perfil extends StatefulWidget{
  Perfil ({Key? key}) :super (key: key);

  _PerfilState createState ()=> _PerfilState ();
}

class _PerfilState extends State <Perfil>{

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);
  }

   @override 
  Widget build (BuildContext context){
    return Scaffold(
      appBar: CustomAppbar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Nombre", style: TextStyle( 
            fontSize: 20
          ),),
          SizedBox(height: 4,),
            Text("Cristina Ceron ", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
            SizedBox(height: 16,), 

            Text("Correo electronico", style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
          SizedBox(height: 4,),
            Text("ceroncris93@gmail.com",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
            SizedBox(height: 16,), 


            Text("Direccion", style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
          SizedBox(height: 4,),
            Text("CALLE 10 # 21/27 Ciudad Jardin", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
            SizedBox(height: 16,), 


            Text("Telefono", style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
          SizedBox(height: 4,),
            Text("3079433397", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
            SizedBox(height: 16,), 


            Text("Numero de identificacion", style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
          SizedBox(height: 4,),
            Text("467857888", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
            SizedBox(height: 50,), 

            Divider(color: Colors.blueAccent,),

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
    );

  } 
}


class CustomAppbar extends StatelessWidget
  with PreferredSizeWidget{

  @override
  Size get preferredSize => Size(double.infinity, 300);

    
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent,
              blurRadius: 20,
              offset: Offset(0,10)
            )
          ]
        ),
      child: Column(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
     IconButton( 
            icon: Icon(Icons.menu, color: Colors.white,),
            onPressed: (){},
          ),
          Text("Perfil de Usuario", style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),),    
          IconButton(icon: Icon(Icons.notifications, color: Colors.white,),
          onPressed: (){},
          ) 
        ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,//cambiar de alineacion
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
          width:90,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit:BoxFit.cover,
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSviMfP3adXU8nvPIQQFBPV8lhpEq6CjrLRXkb_0DEDA42PFTfw6PmbGOHDKQL8hap-vRY&usqp=CAU"),
            )
            )
          ),
          SizedBox(height: 16, ),
          Text("Cristina Ceron", style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ), )
              ],
            )
         ],
        ),
        //Boton editar perfil
        Align(
          alignment: Alignment.center ,
          child: RotatedBox(
            quarterTurns: 0,
            child: Container(
              width: 110,
              height: 32,
              child: Center ( child: Text ("Editar perfil"),),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
              )
            ),
        )
       //Fin boton editar perfil
        ]
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper <Path>{

  @override 
  Path getClip (Size size){
    Path p = Path();

    p.lineTo(0, size.height-70);
    p.lineTo(size.width, size.height);

    p.lineTo(size.width, 0);

    p.close();

    return p;
  }
  @override
  bool shouldReclip (CustomClipper<Path> oldClipper ){
  return true;
  }

}



