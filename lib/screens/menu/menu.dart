import 'package:flutter/material.dart';
import 'package:tsel_appsuas/themes.dart'; // Pastikan file themes.dart ada dan primaryColor didefinisikan

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  Menu({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool showMenu = true;

  final List<Map<String, String>> items = [
    {'title': 'Beli Paket', 'icon': 'assets/icons/icons_internet.png'},
    {'title': 'Kirim Hadiah', 'icon': 'assets/icons/icons_reward_gift_new.png'},
    {'title': 'Isi Pulsa', 'icon': 'assets/icons/icons_phone.png'},
    {'title': 'Kuota Telpon', 'icon': 'assets/icons/icons_quota_sms.png'},
    {'title': 'Telkomsel Voting', 'icon': 'assets/icons/voting.png'},
    {'title': 'Games', 'icon': 'assets/icons/icons_games_package.png'},
    {'title': 'Cek Kuota Roaming', 'icon': 'assets/icons/roaming.png'},
    {'title': 'Paket Darurat', 'icon': 'assets/icons/paket_darurat.png'},
    {'title': 'Kuota Youtube', 'icon': 'assets/icons/icons_aplikasi_yt.png'},
    {'title': 'Flash Sale', 'icon': 'assets/icons/icons_flash_sale.png'},
    {'title': 'Musik', 'icon': 'assets/icons/icons_music_new.png'},
    {'title': 'Jelajah Kalibagor', 'icon': 'assets/icons/scooter.png'},
    {'title': 'Freya Sayang :*', 'icon': 'assets/icons/icon_freya.png'},
    // Tambahkan item lainnya sesuai kebutuhan
  ];

  void toggleMenu() {
    setState(() {
      showMenu = !showMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Show menu only when `showMenu` is true
          if (showMenu)
            Container(
              height: 430,
              color: primaryColor.withOpacity(0.5),
            ),
          if (showMenu)
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                padding: EdgeInsets.symmetric(vertical: 24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Mobile Header
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile",
                            style: mediumtext15.copyWith(color: Colors.black54),
                          ),
                          Icon(Icons.keyboard_arrow_right, color: Colors.black54),
                          SizedBox(width: 8.0),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black12),
                    // Add SingleChildScrollView and Column to enable scrolling
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          // Wrap GridView with a fixed height Container
                          Container(
                            height: 300.0, // Set height for the grid
                            child: GridView.builder(
                              padding: EdgeInsets.all(16.0),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 16.0,
                                mainAxisSpacing: 16.0,
                                childAspectRatio: 0.75,
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return GridItem(
                                  title: items[index]['title']!,
                                  iconPath: items[index]['icon']!,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          // Bottom Icon Button
          Positioned(
            bottom: 24.0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.red),
                  onPressed: toggleMenu,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;
  final String iconPath;

  GridItem({required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconPath, width: 30.0, height: 30.0),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.0, color: Colors.black),
        ),
      ],
    );
  }
}
