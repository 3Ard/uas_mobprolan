import 'package:flutter/material.dart';
import '../../../themes.dart';


class Paket extends StatelessWidget {
  const Paket();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, left: 16, right: 16),
          height: 500,
         decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15),
         ), 
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //expend 1...........................................................................
          Flexible(
            child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
          child: Padding(
          padding: EdgeInsets.only(left: 15, top: 5,right: 10),
          child: Row(
            children: [
              Text('Spesial Untuk Kamu', style: regulertext14.copyWith(color: Colors.black),),
              Icon(
                Icons.keyboard_arrow_right,
                        color: Colors.black,
                        size: 30,
              )
            ],
          ),
          ),  
          )
          ),
          //expend.....................................................................................
          Flexible(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
              child: Padding(padding:
              EdgeInsets.only(left: 1, top: 5,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                     padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                     decoration: BoxDecoration (
                      color:const Color.fromARGB(72, 81, 147, 201), borderRadius: BorderRadius.circular(15)
                      ),
                     child: Row(
                        children: [
                          Icon(
                            Icons.local_mall,
                        color: blueColor,
                        size: 10,
                          ),
                          SizedBox(width: 2,),
                          Text('Beli Lagi', style: semitext10.copyWith(color: const Color.fromARGB(255, 0, 17, 255)),),   
                        ],
                      ),
                      ),
                      Text('Internet Sakti 40GB -30 Hari', style: boldtext12.copyWith(color: blackcolor),)
                    ],
                  ),
                  SizedBox(width: 55,),
                  Spacer(),
                  Column(
                    children: [
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration (
                    color: redColor, borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Rp. 1000', style: boldtext12.copyWith(color: primaryColor),
                    ),
                    ),
                    Text('Rp.10.000', style: regulertext12.copyWith(color: blackcolor,decoration: TextDecoration.lineThrough))
                    ],
                  )
                ],  
              ),
              ),

          )
          ),
          Flexible(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
              child: Padding(padding:
              EdgeInsets.only(left: 15, top: 5,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                     padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                     decoration: BoxDecoration (
                      color: const Color.fromARGB(72, 81, 147, 201), borderRadius: BorderRadius.circular(15)
                      ),
                     child: Row(
                        children: [
                          Icon(
                            Icons.local_mall,
                        color: blueColor,
                        size: 10,
                          ),
                          SizedBox(width: 2,),
                          Text('Beli Lagi', style: semitext10.copyWith(color: const Color.fromARGB(255, 0, 17, 255)),),   
                        ],
                      ),
                      ),
                      Text('Internet Halu 50GB -30 Hari', style: boldtext12.copyWith(color: blackcolor),)
                    ],
                  ),
                  SizedBox(width: 55,),
                  Spacer(),
                  Column(
                    children: [
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration (
                    color: redColor, borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Rp. 2000', style: boldtext12.copyWith(color: primaryColor),
                    ),
                    ),
                    Text('Rp.20.000', style: regulertext12.copyWith(color: blackcolor,decoration: TextDecoration.lineThrough))
                    ],
                  )
                ],  
              ),
              ),

          )
          ),
          Flexible(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
              child: Padding(padding:
              EdgeInsets.only(left: 15, top: 5,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                     padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                     decoration: BoxDecoration (
                      color: const Color.fromARGB(72, 81, 147, 201), borderRadius: BorderRadius.circular(15)
                      ),
                     child: Row(
                        children: [
                          Icon(
                            Icons.local_mall,
                        color: blueColor,
                        size: 10,
                          ),
                          SizedBox(width: 2,),
                          Text('Beli Lagi', style: semitext10.copyWith(color: const Color.fromARGB(255, 0, 17, 255)),),   
                        ],
                      ),
                      ),
                      Text('Internet Gila 70MB -60 Hari', style: boldtext12.copyWith(color: blackcolor),)
                    ],
                  ),
                  SizedBox(width: 55,),
                  Spacer(),
                  Column(
                    children: [
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration (
                    color: redColor, borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Rp. 3.000', style: boldtext12.copyWith(color: primaryColor),
                    ),
                    ),
                    Text('Rp.30.000', style: regulertext12.copyWith(color: blackcolor,decoration: TextDecoration.lineThrough))
                    ],
                  )
                ],  
              ),
              ),

          )
          ),
           Flexible(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
              child: Padding(padding:
              EdgeInsets.only(left: 15, top: 5,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                     padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                     decoration: BoxDecoration (
                      color: const Color.fromARGB(72, 81, 147, 201), borderRadius: BorderRadius.circular(15)
                      ),
                     child: Row(
                        children: [
                          Icon(
                            Icons.local_mall,
                        color: blueColor,
                        size: 10,
                          ),
                          SizedBox(width: 2,),
                          Text('Beli Lagi', style: semitext10.copyWith(color: const Color.fromARGB(255, 0, 17, 255)),),   
                        ],
                      ),
                      ),
                      Text('Internet Halu 5GB -30 Hari', style: boldtext12.copyWith(color: blackcolor),)
                    ],
                  ),
                  SizedBox(width: 55,),
                  Spacer(),
                  Column(
                    children: [
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration (
                    color: redColor, borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Rp. 4000', style: boldtext12.copyWith(color: primaryColor),
                    ),
                    ),
                    Text('Rp.40.000', style: regulertext12.copyWith(color: blackcolor,decoration: TextDecoration.lineThrough))
                    ],
                  )
                ],  
              ),
              ),

          )
          ),
           Flexible(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
              child: Padding(padding:
              EdgeInsets.only(left: 15, top: 5,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                     padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                     decoration: BoxDecoration (
                      color: const Color.fromARGB(72, 81, 147, 201), borderRadius: BorderRadius.circular(15)
                      ),
                     child: Row(
                        children: [
                          Icon(
                            Icons.local_mall,
                        color: blueColor,
                        size: 10,
                          ),
                          SizedBox(width: 2,),
                          Text('Beli Lagi', style: semitext10.copyWith(color: const Color.fromARGB(255, 0, 17, 255)),),   
                        ],
                      ),
                      ),
                      Text('Internet Halu 60GB -30 Hari', style: boldtext12.copyWith(color: blackcolor),)
                    ],
                  ),
                  SizedBox(width: 55,),
                  Spacer(),
                  Column(
                    children: [
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration (
            
                    color: redColor, borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Rp. 5000', style: boldtext12.copyWith(color: primaryColor),
                    ),
                    ),
                    Text('Rp.50.000', style: regulertext12.copyWith(color: blackcolor,decoration: TextDecoration.lineThrough))
                    ],
                  )
                ],  
              ),
              ),

          )
          ),
           Flexible(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
              child: Padding(padding:
              EdgeInsets.only(left: 15, top: 5,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                     padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                     decoration: BoxDecoration (
                      color: const Color.fromARGB(72, 81, 147, 201), borderRadius: BorderRadius.circular(15)
                      ),
                     child: Row(
                        children: [
                          Icon(
                            Icons.local_mall,
                        color: blueColor,
                        size: 10,
                          ),
                          SizedBox(width: 2,),
                          Text('Beli Lagi', style: semitext10.copyWith(color: const Color.fromARGB(255, 0, 17, 255)),),   
                        ],
                      ),
                      ),
                      Text('Internet Halu 70GB -30 Hari', style: boldtext12.copyWith(color: blackcolor),)
                    ],
                  ),
                  SizedBox(width: 55,),
                  Spacer(),
                  Column(
                    children: [
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration (
                    color: redColor, borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Rp. 6000', style: boldtext12.copyWith(color: primaryColor),
                    ),
                    ),
                    Text('Rp.60.000', style: regulertext12.copyWith(color: blackcolor,decoration: TextDecoration.lineThrough))
                    ],
                  )
                ],  
              ),
              ),

          )
          ),

          ],
         ),
        )
      ],
    );
  }
}