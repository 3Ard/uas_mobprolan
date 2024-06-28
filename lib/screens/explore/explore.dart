import 'package:flutter/material.dart';

class ExploreApp extends StatelessWidget {
  const ExploreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Explore(),
    );
  }
}

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entertainment'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildHorizontalScroll(),
                _buildVerticalContent(),
                SizedBox(height: 500), // Beri jarak agar iklan terlihat
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildBottomAdContainer(),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalScroll() {
    PageController _pageController = PageController(viewportFraction: 0.9); // Ubah viewportFraction sesuai kebutuhan
    return Container(
      height: 250.0, // Ubah tinggi sesuai kebutuhan
      margin: EdgeInsets.only(bottom: 100.0), // Tingginya sesuai dengan jarak iklan di bottom
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 1.0;
              if (_pageController.position.haveDimensions) {
                value = _pageController.page! - index;
                value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
              } else {
                value = index == 0 ? 1.0 : 0.8;
              }
              return Center(
                child: SizedBox(
                  height: Curves.easeInOut.transform(value) * 250,
                  width: Curves.easeInOut.transform(value) * 300,
                  child: child,
                ),
              );
            },
            child: _buildCard(
              'Card $index',
              'Description $index',
              'Click Here',
              'assets/images/promo1.jpg', // Ganti dengan path gambar yang valid
            ),
          );
        },
      ),
    );
  }

  Widget _buildVerticalContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildIconButton(Icons.video_library, 'Video'),
            SizedBox(width: 16), // Jarak horizontal antara ikon
            _buildIconButton(Icons.music_note, 'Audio'),
            SizedBox(width: 16), // Jarak horizontal antara ikon
            _buildIconButton(Icons.gamepad, 'Ruang Main'),
            SizedBox(width: 16), // Jarak horizontal antara ikon
            _buildIconButton(Icons.book, 'Pojok Baca'),
            // Tambahkan ikon lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String views, String buttonText, String imagePath) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey.shade300,
                      child: Center(child: Text('Image not found')),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Text(
                views,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(buttonText),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.grey.shade700),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

  Widget _buildBottomAdContainer() {
    return Container(
      height: 200.0, // Tinggi diperbesar untuk menyesuaikan konten
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildAdCard(
            'assets/images/1.jpg', // Ganti dengan path gambar iklan yang valid
            'Love Daddy',
            '36:32',
          ),
          _buildAdCard(
            'assets/images/2.jpg', // Ganti dengan path gambar iklan yang valid
            'Until Tomorrow',
            '1:46:58',
          ),
          _buildAdCard(
            'assets/images/3.jpg', // Ganti dengan path gambar iklan yang valid
            'BanCika',
            '6:31',
          ),
          _buildAdCard(
            'assets/images/4.jpg', // Ganti dengan path gambar iklan yang valid
            'Kartu Keluarga',
            '4:27',
          ),
        ],
      ),
    );
  }

  Widget _buildAdCard(String imagePath, String title, String duration) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
            child: Image.asset(
              imagePath,
              height: 120.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(ExploreApp());
}
