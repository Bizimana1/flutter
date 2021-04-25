import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "bloger",
      home: Scaffold(
        appBar: AppBar(title: Text("my blogger",),),

        body: Material(
          child: Listing(),
        ),
      ),
    )
  );
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
       padding: EdgeInsets.only(left: 12.0,top: 5.0,bottom: 200.0,right: 15.0),
       // color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Row(children:<Widget> [
              Expanded(child: Text("No",
                style: TextStyle(color: Colors.amber,
                    fontSize: 38.0,
                  ),
              ),
              ),
              Expanded(child:Text("Names",
                style: TextStyle(color: Colors.amber,
                  fontSize: 38.0,),),
              ),
              Expanded(child:Text("Age",
                style: TextStyle(color: Colors.amber,
                  fontSize: 38.0,),),
              ),
            ],
            ),

            Row(children:<Widget> [
              Expanded(child:Text("1",),),
              Expanded(child:Text("Salomon",),),
              Expanded(child: Text("22",),),
            ],),
            Row(children:<Widget> [
              Expanded(child:Text("2",),),
              Expanded(child:Text("Peter",),),
              Expanded(child:Text("20",),),
            ],),
            Row(children:<Widget> [
              Expanded(child:Text("3",),),
              Expanded(child:Text("Paul",),),
              Expanded(child:Text("23",),),
            ],),
            Row(children:<Widget> [
              Expanded(child:Text("4",),),
              Expanded(child:Text("kaka",),),
            Expanded(child:Text("24",),),
            ],),
          Display_image(),
            Button(),

          ],
        ),

      ),

    );
  }
}

class Display_image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   AssetImage assetImage=AssetImage("images/pic.jpg");

   Image image=Image(image: assetImage);


   return Container(
     alignment: Alignment.center,
     child: Row(
       children: <Widget>[
        Center(child: image,),

       ],
     ),
   );

  }

}

class Button extends StatelessWidget{
  get onPressed => null;

  @override
  Widget build(BuildContext context) {

    return Container(
     child: Column(
       children: <Widget>[
         FlatButton(onPressed: onPressed,
           child: Text("Click me",
             style: TextStyle(color: Colors.red,),
           ),),

       ],
     ),
    );
  }
  
}
/*Widget Listing(){
  var listview=ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.icecream),
        title: Text("Icecream",),
        subtitle:Text("buy icecream enjoy life",),
        trailing:Icon(Icons.icecream),
          onTap: (){
            debugPrint("you've clicked  icecream");
          }
      ),
      ListTile(
        leading: Icon(Icons.icecream),
        title: Text("Icecream",),
        subtitle:Text("buy icecream enjoy life",),
        trailing:Icon(Icons.icecream),
        onTap: (){

        },


      ),
      Text("Here are other elements",),
      Container(color: Colors.red,height: 40.0,)
    ],
  );
  return listview;
}
*/
List<String> GetList(){
  var listing=List.generate(40, (counter)=>" Person $counter");
  return listing;
}
Widget Listing(){
  var listtitle=GetList();
  var listview=ListView.builder(itemBuilder: (context,index){
  return ListTile(
    leading: Icon(Icons.person),
onTap: (){

},
title: Text(listtitle[index]),
  );
  });
  return  listview;
}