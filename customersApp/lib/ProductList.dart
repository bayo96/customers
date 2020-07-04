import 'package:flutter/material.dart';

class ProductsList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ProductsList();
  }

}
class  _ProductsList extends State<ProductsList>{
  @override
  Widget build(BuildContext context) {
    double hauteurLOG =MediaQuery.of(context).size.height/3;
    double hau =MediaQuery.of(context).size.height/4;
  //  int nombre;

    //TODO: implement build
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
          Container(
            height: hauteurLOG,
            color: Colors.blue,
         //margin: EdgeInsets.only(top: hauteurLOG/9),
         
           
           child: Center(
             
              child:Column(
                
                children: [
                  Container(
                    margin: EdgeInsets.only(top:50.0),
                  child:  Text(
                       'Max Price',
                       style: TextStyle(
                       fontSize: 30.0,
                       color: Colors.white
                ),
              ),
                  ),
              
                 Container(
                    margin: EdgeInsets.only(top:30.0),
                  child:  Text(
                       '5000 cfa',
                       style: TextStyle(
                       fontSize: 30.0,
                       color: Colors.white
                ),
              ),
            )
            ],
              )
            )
         ),
    

              Container(
              height: hau*2,
              child: myListe()
              ),
              addButton(hau)
        
              
          ] 
          ) 
         )
      );


      
  }



 Widget myListe()
  {
    return ListView.builder(
      itemCount:3,
      itemBuilder: (context,int i){
          return itemList(i) ;
      },
    );
  }

  Widget itemList(int i)
  {
    return ListTile(
      leading: CircleAvatar(
      backgroundColor: Colors.blue,
    ), 
    title: Text('fruits'),
    subtitle: Text('date-creation'),
    trailing:
          new Text('500'),
    );
  }

  Widget addButton(double hau)
  {
    return Container(
        height: hau/2,
                child:Column(
                  children: [
                  Center(
                  child:Text('Add a New Product',
                      style:TextStyle(
                      color:Colors.blue,
                      fontSize: 20.0,
                    
                    ))
                    ),
                    IconButton(icon: Icon(Icons.add,
              color:Colors.blue,
              size: 50.0,), 
              onPressed: null),
                  ],
                )
              );
  }
}
