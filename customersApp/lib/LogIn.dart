
import 'package:flutter/material.dart';

import 'ProductList.dart';


class LogIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  
    return  new _LogIn2();
  }
  
}
class _LogIn2 extends State<LogIn>{
  @override
  Widget build(BuildContext context) {
    double hauteurLOG =MediaQuery.of(context).size.height/3;
    double large= MediaQuery.of(context).size.width/4;

    return Material(
    child:  Container(
      color: Colors.red,
      child: new Column(
         children: [
           Container(
                  margin: EdgeInsets.only(top:hauteurLOG/5),
                  height:hauteurLOG/4,
            
                child:Text(
                  "renseignez les champs",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:30.0
                  ),
                  ),
             ),

           Container(
             width: large*3,
             height:hauteurLOG ,
             margin: EdgeInsets.only(top:hauteurLOG/6),
             child: ListView(
                  
                    children: [
                      
                      Padding(padding: EdgeInsets.only(top: hauteurLOG/7),
                      child: TextFormField(
                
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
                        Padding(padding: EdgeInsets.only(top: hauteurLOG/7),
                        child: TextFormField(
                
                          decoration: new InputDecoration(
                            labelText: "passWord",
                            fillColor: Colors.white,
                          enabledBorder: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(color: Colors.white ,width: 1.0),
                            ),
                          
                          ),
                        
                          ),),
                    ])

             
           ),
        Container(
        margin: EdgeInsets.only(top:hauteurLOG/7 ),
        width: large*2,
        height: 40.0,
         child:RaisedButton(
                color: Colors.green,

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext){
                    return new ProductsList ();
                  },),);
                },
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                      ),
                      child: new Text('connect',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      )),
                )
        
        ),
          Container(
        margin: EdgeInsets.only(top:hauteurLOG/7 ),
        width: large*2,
        height: 40.0,
      child:RaisedButton(
                color: Colors.red,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext){
              
                  },),);
                },
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                      ),
                      child: new Text('annulerr',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20.0
                      )),
                )
        
        )
         ],
      ),

    ),
    );
  }  
}