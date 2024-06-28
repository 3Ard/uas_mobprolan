
import 'package:flutter/material.dart';
import 'package:tsel_appsuas/themes.dart';
import 'componen/recomend.dart';
import 'componen/news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  Color _headerBackgroundColor = Colors.transparent;
  Color _headerTextColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      if (_scrollController.offset > 100) { // You can adjust the threshold
        _headerBackgroundColor = Colors.white;
        _headerTextColor = Colors.black;
      } else {
        _headerBackgroundColor = Colors.transparent;
        _headerTextColor = Colors.white;
      }
    });
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.account_circle,
                color: _headerTextColor,
                size: 35,
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'arif awan deni',
                    style: mediumtext15.copyWith(color: _headerTextColor),
                  ),
                  Text(
                    'Reguler. 100 Poin',
                    style: regulertext12.copyWith(color: _headerTextColor),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: _headerTextColor,
                size: 30,
              ),
              SizedBox(width: 12,),
              Icon(
                Icons.notifications_none,
                color: _headerTextColor,
                size: 30,
              ),
              SizedBox(width: 12,),
              Image.asset('assets/icons/vero.png',// Change the color based on scroll
                  width: 40)
            ],
          ),
        ],
      ),
    );
  }

  Widget cardinfo() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 18, left: 16, right: 16),
          height: 130,
          decoration: BoxDecoration(
            color: txtboxColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: txtboxColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 8, right: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                                decoration: BoxDecoration(
                                    color: redColor, borderRadius: BorderRadius.circular(15)
                                ),
                                child: Text('PraBayar', style: boldtext10.copyWith(color: primaryColor),),
                              ),
                              SizedBox(width: 7,),
                            ],
                          ),
                          Text('0821 5471 2417 ~ Akun Utama ', style: boldtext12.copyWith(color: primaryColor)),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  )
              ),
              Container(
                height: 1,
                color: primaryColor,
                margin: const EdgeInsets.symmetric(horizontal: 15),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.only(top: 10, left: 16, right: 50),
                decoration: BoxDecoration(
                    color: txtboxColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('pulsa', style: mediumtext12.copyWith(color: primaryColor)),
                        Text('Rp.1.000.000', style: extraboldtext18.copyWith(color: primaryColor))
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Kouta Internet', style: mediumtext12.copyWith(color: primaryColor)),
                        Row(
                          children: [
                            Text('100GB', style: extraboldtext18.copyWith(color: primaryColor)),
                            SizedBox(width: 7,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: grey2Color, borderRadius: BorderRadius.circular(15)
                              ),
                              child: Text('Beli', style: boldtext12.copyWith(color: primaryColor),),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        )
      ],
    );
  }

  Widget tmbh() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.symmetric( horizontal: 20),
          decoration: BoxDecoration(
          color: txtboxColor, borderRadius: BorderRadius.circular(15)
          ),          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
                Text(
                  "Ganti Akun",
                    style: TextStyle(
                    color: const Color.fromARGB(255, 255, 251, 250),
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                          height: 430,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: grey2Color,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  padding:
                                      EdgeInsets.only(bottom: 150, right: 150),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 20, left: 15, right: 15, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pilih akun",
                                      style: extraboldtext18,
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(236, 245, 252, 1),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Arif Ardi Antoro",
                                          style: mediumtext15.copyWith(color: blackcolor),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "STI202102246",
                                              style: regulertext12.copyWith(color: blackcolor),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "PraBayar",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Aktif hingga 04 Feb 2035",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          constraints: BoxConstraints(),
                                          icon: Image.asset(
                                              "assets/icons/checklist.png",
                                              width: 30,),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              _containerGantiAkun(
                                "Awan Restu Lisyanto",
                                "STI202102395",
                                "∞ Unlimited",
                              ),
                              Divider(),
                              _containerGantiAkun(
                                "Deni Setiadi",
                                "STI202102464",
                                "Aktif hingga 25 Sep 2024",
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 15, top: 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              constraints: BoxConstraints(),
                                              icon: Image.asset(
                                                  "assets/icons/add-solid.png"),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Tambahkan nomor telepon",
                                                style: boldtext15),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                )
              ],
          ),
                  
        ),
      ],
    );
  }
  Container _containerGantiAkun(String nama, String number, String exp) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$nama",
                style: mediumtext15.copyWith(color: blackcolor),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "$number",
                    style: regulertext12.copyWith(color: blackcolor),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "PraBayar",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "$exp",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/img_background_header.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            height: 430,
          ),
          Container(
            height: 430,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                ],
              ),
            ),
          ),
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: _SliverAppBarDelegate(
                  minHeight: 100.0,
                  maxHeight: 100.0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    color: _headerBackgroundColor,
                    child: header(),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 8), // Spacing between header and content
                    cardinfo(),
                    tmbh(),
                    RecomendeCard(),
                    WhatsNewCard(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _containerGantiAkun {
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));

}