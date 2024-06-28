import 'package:flutter/material.dart';
import 'package:tsel_appsuas/themes.dart'; // Pastikan file ini benar-benar ada dan diimport dengan benar

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        Text(
          'Beli Sekarang juga',
          style: regulertext12.copyWith(color: primaryColor),
        ),
        const SizedBox(height: 10), // Menambahkan jarak antara teks dan container
        Container(
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
          padding: const EdgeInsets.symmetric(vertical: 5,),
          decoration: BoxDecoration(
          color: txtboxColor,
          borderRadius: BorderRadius.circular(20),
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Menempatkan Row di tengah
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                decoration: BoxDecoration(
                  color: redColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'PraBayar',
                  style: boldtext10.copyWith(color: primaryColor),
                ),
              ),
              SizedBox(width: 7),
              Text(
                '0821 5417 2417', style: mediumtext12.copyWith(color: primaryColor),
                ),
                SizedBox(width: 7),
                 Icon(Icons.expand_more, color: Colors.white,)// Jarak antara item Row
              // Tambahkan item lain jika diperlukan
            ],
          ),
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: txtboxColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.search_off_outlined, weight: 26,color: primaryColor,
                ),
              ),
              Text('Cari Paket', style: mediumtext12.copyWith(color: primaryColor),),
            ],
          ),
          SizedBox(width: 25,),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: txtboxColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.add, weight: 26,color: primaryColor,
                ),
              ),
              Text('Isi Pulsa', style: mediumtext12.copyWith(color: primaryColor),),
            ],
          ),
          SizedBox(width: 25,),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: txtboxColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.card_giftcard, weight: 50,color: primaryColor,
                ),
              ),
              Text('Kirim Hadiah', style: mediumtext12.copyWith(color: primaryColor),),
            ],
          )
        ],
      ),
      Container(
          margin: EdgeInsets.symmetric(vertical: 30,horizontal: 149),
          padding: const EdgeInsets.only(left: 5, right: 1),
          decoration: BoxDecoration(
          color: redColor,
          borderRadius: BorderRadius.circular(20),
                    ),
        child: Row(
          children: [
            Text('Beli Paket',style: semitext13.copyWith(color: primaryColor),
            ),
            Image.asset('assets/icons/glob-red.png',width: 40,),
          ],

        ),
      ),
      ],      
    );
  }
}