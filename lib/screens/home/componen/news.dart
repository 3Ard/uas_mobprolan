import 'package:flutter/material.dart';
import '../../../themes.dart';

class WhatsNewCard extends StatelessWidget {
  const WhatsNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 18, left: 16, right: 16),
          height: 2100,
         decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15),
         ),
         child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 5,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Promo Corner', style: boldtext14.copyWith(color: Colors.black),),
                  Text('Beragam program yang bikin beli ini itu lebih hemat!', style: regulertext10.copyWith(color: Colors.black),),
                ],
                          ),
                          ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo1.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo2.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo3.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/prom04.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo5.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo6.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo7.png',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/promo8.jpg',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                  ),
                  child: Padding(padding: 
                  EdgeInsets.only(left: 15, top: 20,right: 10),
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/video-subs.png',
                  fit: BoxFit.contain,)
                ],
                  ),
                ),
                ),
              ],
            )
            ),
          ],
         ),
        )
      ]
    );
  }
}