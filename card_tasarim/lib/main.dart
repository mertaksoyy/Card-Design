import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Test deneme calisma"),
      ),
      body:Center(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CardTasarimDeneme(),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: CardTasarimDeneme(),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CardTasarimDeneme(),
            )
          ],
        ),
      ) ,
    );
  }
}

/*class HomePageBody1 extends StatelessWidget {
  const HomePageBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        color: Colors.green,
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Icon(Icons.add,size: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Bu bir text"),
                Text("Bu bir text iki")
              ],
            )
          ],
        ),
      ),
    );
  }
}
 */


class CardTasarimDeneme extends StatelessWidget {
  const CardTasarimDeneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.green,
      ),
      width: 250,
      height: 250,
      child: Column(
        children:[
          Padding(
              padding:EdgeInsets.fromLTRB(20, 20,0, 0),
            child:Row(
              children:const[
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,),
                SizedBox(//ikon ile text arasına boşluk
                  width: 20,
                ),
                Text(
                  "Kart Tasarımıdır",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Icon(Icons.person,size: 120,color: Colors.black,),
          const Text("Hamburger",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight:FontWeight.bold,
          ),
          )
        ],
      ),
    );
  }
}





