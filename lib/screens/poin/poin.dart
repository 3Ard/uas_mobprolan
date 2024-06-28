import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tukar Poin',
      home: Poin(),
    );
  }
}

class Poin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(width: 16.0),
            Text(
              '0 Poin',
              style: TextStyle(fontSize: 16.0),
            ),
            Spacer(),
            Text(
              'reguler',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tukar Poin',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Reward Saya',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical, // Ubah menjadi vertical
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0), // Ubah jarak antar item
                  child: OfferItem(
                    imageUrl: index == 0
                        ? 'assets/images/hadiah-hp.png'
                        : index == 1
                            ? 'assets/images/image-ff.png'
                            : index == 2
                                ? 'assets/images/hero.png'
                                : 'assets/images/checkin.png',
                    title: index == 0
                        ? 'Undi - undi happi'
                        : index == 1
                            ? 'Akses 7 Hari All Fit HUB Outlet'
                            : index == 2
                                ? 'Voucher Diskon Hero'
                                : 'Diskon 20% yok Checkin Sekarang',
                    description: index == 0
                        ? 'Ayok undi keluarkan Happi'
                        : index == 1
                            ? '10 Poin'
                            : index == 2
                                ? '500 Poin'
                                : '5 Poin',
                    points: index == 0
                        ? '0 Poin'
                        : index == 1
                            ? '10 Poin'
                            : index == 2
                                ? '500 Poin'
                                : '5 Poin',
                    action: 'Lihat Semua',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String points;
  final String action;

  OfferItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.points,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 250.0, // Lebar kontainer sesuaikan dengan kebutuhan
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9, // Proporsi gambar disesuaikan
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0), // Padding konten dalam
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(description),
                  SizedBox(height: 12.0),
                  Stack(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Tambahkan logika untuk menangani aksi
                        },
                        style: ElevatedButton.styleFrom(
                          iconColor: Color(0xFF007AFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text(action),
                      ),
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: Text(
                          'reguler',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    points,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
