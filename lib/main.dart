import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('หน้าแรก',style: TextStyle(color: Colors.blueGrey,
//สีอักษร
            backgroundColor: Colors.lightBlueAccent,
//สีพื้นหลัง
            fontSize: 32,
//ขนาดอักษร
            fontWeight: FontWeight.w800,
//ความหนา
          ),),
          leading: Text("Leading"),
          actions: [Icon(Icons.menu,
//ชื่ิิิิิอไอคอน
            size: 60,
//ขนาด
            color: Colors.deepPurpleAccent,
//สี
          )],
        ),
        body: Column(
          children: [
            Text("Hello"),
            Row(
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbtg1itij4pTBajuS4HNqAQcXpdHacBxVY3FDF_mMrzl93kU_SvFS4zQY&s=10"
                  ,width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                ClipOval(
                child:Image.asset(
                  "assets/assets/pic1.avif",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                 ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("ปุ่ม 1"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8)
                        )
                      )
                  )
                ),
                Expanded(
                    child:OutlinedButton(
                         onPressed: () => {},
                        child: Text("ปุ่ม 2"),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.amber
                      )
                    )
                )
              ],
            )
          ],
        )
    );
  }
}