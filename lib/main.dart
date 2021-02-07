import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: MyEv(),
  ));
}

class MyEv extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen",),
      ),
     body: Center(
       child: RaisedButton( 
                elevation: 5,
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.transparent)),
                  child: Text("Go To Second Screen",style: TextStyle(fontSize: 15),),
                onPressed: () {
                 goToSecondScreen(context);
                },
              ),
     ),
      
    );
  }
} 


//////////butun classların dısında ac

 void goToSecondScreen(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
 }

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.pink,title: Text("Second Screen"),
     ),
     body: Center(child: Text("This is a second screen",style: TextStyle(fontSize: 20),),),
   );
  }
}
