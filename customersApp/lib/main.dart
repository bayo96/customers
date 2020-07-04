import 'package:customersApp/SignIn.dart';
import 'package:flutter/material.dart';

import 'SingIn2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Home_customer(),
      );
        
}
}
class Home_customer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home_customer();
  }
  
}
class _Home_customer extends State<Home_customer>{
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height/2;
    double h1=h/2;
    double h2=h1/2;
    double h3=h2/5;
    double l=MediaQuery.of(context).size.width/3;
    // TODO: implement build
    return   new Stack(
      children: [

         Container(
           height: h*2,
           child: Column(
             children: [
                Container(
            height:  h,
            
            color: Colors.blueAccent,
            child: new Center(
                      child: Column(
                      
                        children: [
                          
                          // Img
                         Container(
                           margin: EdgeInsets.only(top: h1),
                           child:new Text(
                        'say courses',
                        
                      style:new TextStyle(
                        color:Colors.white,
                        fontSize: 40.0,
                      
                      ),
                    ),)
                        ],
                      )
                ),
          ),
          Container(
            height: h,
            color: Colors.blueAccent,
            child: Center(
              child: Column(
              children: [
                Container(
                  width: l*2,
                  margin: EdgeInsets.only(top:h2),
                  child : new RaisedButton(
                   // focusColor:Colors.blueGrey,
                           onPressed: (){
                              signIn();
                           },
                           color: Colors.blueAccent,
                            child: new Text('Sign In',
                            style: new TextStyle(
                              fontSize: 20.0,
                              color:Colors.white
                            ),),

                              ),
                ),
                 Container(
                   width:l*2,
                   margin: EdgeInsets.only(top:h3),
                   
                child: RaisedButton(
                 
                                onPressed: null,
                                child: new Text('log In',
                                style: new TextStyle(
                              fontSize: 20.0,
                              color:Colors.white)
                                ),

                              ),
                   )
                    
                 
                  

              ],
              ),
            ),
          )
             ],
           ),
         )
        


       
      ],

    );
  }
void signIn(){
 Navigator.push(this.context, new MaterialPageRoute(
   builder: (BuildContext){
   return  new SingIn2();
 }),
 );

}

}