import 'package:flutter/material.dart';
import 'package:session_7/data_store/store_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Center(child: Text('ListView.separated')),
          ),
          body:  Container(
            margin: const EdgeInsets.only(top:3),
            decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.center,colors: [Colors.green,Colors.white,],)
            ),
            child: ListView.separated(
              itemCount: players.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(height: 10,thickness: 1,color: Colors.black,); },
              itemBuilder: (BuildContext context, index){
                return ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage:AssetImage(players[index].imagePath),),

                    title: Text(
                      players[index].name,
                      style:  const TextStyle(letterSpacing: 1,
                          color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(players[index].role,
                        style:   const TextStyle(letterSpacing: 1,
                            color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold)),
                    trailing: Text(players[index].country,
                        style:   const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  );
              },
            ),
          ),
        ),
      ),
    );
  }
}
