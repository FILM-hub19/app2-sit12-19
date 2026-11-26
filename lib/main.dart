
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Arnat sukchaem',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(width: 15),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // รูปโปรไฟล์และสถิติ
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                ClipOval(
                  child: Image.asset(
                    "assets/pic.jpeg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 15),

                // สถิติ
                Expanded(
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: const [

                      Column(
                        children: [
                          Text(
                            '24',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text('โพสต์'),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            '11.7m',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text('ผู้ติดตาม'),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text('กำลังติดตาม'),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ข้อมูลส่วนตัว
            const Text(
              'Arnat Sukchaem',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'นักศึกษาแผนกเทคโนโลยีสารสนเทศ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'อะไรดีผมก็ว่าดี',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 15),

            // ปุ่มติดตามและข้อความ
            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isFollowing = !isFollowing;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFollowing
                          ? Colors.grey
                          : Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      isFollowing
                          ? 'กำลังติดตาม'
                          : 'ติดตาม',
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.grey,
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('ข้อความ'),
                  ),
                ),

              ],
            ),

            const SizedBox(height: 20),

            // เมนูรูปภาพ
            const Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on, size: 28),
                Icon(
                  Icons.account_circle_outlined,
                  size: 28,
                  color: Colors.grey,
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Divider(height: 1),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              childAspectRatio: 0.8,

              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
                  fit: BoxFit.cover,
                ),

                Image.network(
                  'https://images.unsplash.com/photo-1470770841072-f978cf4d019e',
                  fit: BoxFit.cover,
                ),

                Image.network(
                  'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
