import 'package:flutter/material.dart';

import 'LogIn.dart';

class SingIn2 extends StatefulWidget {
  @override
  _SingIn2State createState() => _SingIn2State();
}

class _SingIn2State extends State<SingIn2> {
  @override
  Widget build(BuildContext context) {
   double large= MediaQuery.of(context).size.width/4;
   double hauteur= MediaQuery.of(context).size.height/3;
    double hauteure= MediaQuery.of(context).size.height/8;
   double h=MediaQuery.of(context).size.height/2;
   double haut=hauteur/3;
    return Material(
    child: Container(
      color: Colors.blue,
      child: Column(
        children: [

        Container(
            height: hauteure,
            margin: EdgeInsets.only(top:haut),
            child:Text(
              "renseignez les champs",
              style: TextStyle(
                color: Colors.white,
                fontSize:30.0
              ),
              ),

          ),
       Container(
          height: h,
          width: large*3,
       child: ListView(
         
          children: [
            Padding(padding: EdgeInsets.only(top: 9.0),
            child: TextFormField(
      
                decoration: new InputDecoration(
                  labelText: "Nom",
                  fillColor: Colors.white,
                 enabledBorder: new OutlineInputBorder(
                     borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(color: Colors.white ,width: 1.0),
                  ),
                 
                ),
              
                ),
            ),
              Padding(padding: EdgeInsets.only(top: 9.0),
              child: TextFormField(
      
                decoration: new InputDecoration(
                  labelText: "PreNom",
                  fillColor: Colors.white,
                 enabledBorder: new OutlineInputBorder(
                     borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(color: Colors.white ,width: 1.0),
                  ),
                 
                ),
              
                ),),
                Padding(padding: EdgeInsets.only(top:9.0),
                child:TextFormField(
      
                decoration: new InputDecoration(
                  labelText: "login",
                  fillColor: Colors.white,
                 enabledBorder: new OutlineInputBorder(
                     borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(color: Colors.white ,width: 1.0),
                  ),
                 
                ),
              
                ),
           ),
               Padding(padding: EdgeInsets.only(top:9.0),
                child:TextFormField(  
                decoration: new InputDecoration(
                  labelText: "passWord",
                  fillColor: Colors.white,
                 enabledBorder: new OutlineInputBorder(
                     borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(color: Colors.white ,width: 1.0),
                  ),
                 
                ),
              
                ),
               )

          ],
       ),
       ),

      Container(
        margin: EdgeInsets.only(top:10),
        width: large*2,
        child:RaisedButton(
                color: Colors.green,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext){
                    return new LogIn();
                  },),);
                },
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                      ),
                      child: new Text('sinIn',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      )),
                )
       ),
      
     Container(
       
        margin: EdgeInsets.only(top:10),
        width: large*2,
        child:RaisedButton(
             color: Colors.red,
                onPressed: (){

                },
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                      ),
                      child: new Text('annuler',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      )),
                        //color: Colors.green,
                ),
       )
        ],
      ),
    ),
      
    );
    }
      
}
/*

color: Colors.blue,
      child: Column(
        children: [
          Container(
            height: hauteure,
            color: Colors.green,
            margin: EdgeInsets.only(top:haut),
             child: Text(
              "Sing In Page",
              style: TextStyle(
                color: Colors.white,
                fontSize:20.0
              ),
              ),
          ),

          Container(
           height: h,
              child:ListView(
          
          children: [
        
            Column(
            
           children:[
             Text('do dokh'),
             TextFormField(
               decoration: InputDecoration(hintText: "Nom"),
             )
             ],

            )
            ],
          )
          )
          
        ],
      ),


children: [
      new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blueAccent,
        child:Column(
        children: [
          Padding(padding:EdgeInsets.only(top: 70) ),
          Center(
            
          ),
          ListView(
            children: [
              Column(
                children: [
                   Container(
                   child: TextFormField(decoration: InputDecoration(hintText: "Nom"),),
                   )
                ],
              )
            ],
          )
        ])
      )
      ],
    );
  }
}
*/