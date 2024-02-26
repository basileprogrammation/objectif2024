import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("CODO",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
            SizedBox(height: 5,),
            Text("Soutien scolaire sur mesure, succès assuré.",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
            SizedBox(height: 25,),
            TextButton(
              onPressed:null,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey),
                elevation: MaterialStatePropertyAll(10.2)
              ),
              child: Text("Demander un cours"),
            ),
            SizedBox(height: 10,),
            TextButton(
                onPressed: null,
                style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey),
                elevation: MaterialStatePropertyAll(10.2)
            ), child: Text("Donner un cours")),
          ],
        )
        ,
      ),
    );
  }
}