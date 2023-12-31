import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorchat/extentions.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
/**
    Fanlar ketma ketligi uchun yaratilgan widget.
 **/
Widget fans(String image, String text) {
  return Padding(
    padding: const EdgeInsets.only(
        left: 8.0, top: 10.0, right: 8.0, bottom: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        color: '#F4F4F4'.toColor(),
      ),
      height: 35,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image), width: 20, height: 20,),
          Text(text, style: TextStyle(color: '#5F5F5F'.toColor(),
              fontSize: 20,
              fontFamily: 'OpenSans'),),
        ],
      ),
    ),
  );
}

Widget postsubjects({required String imagename,required String coursename,required int commentcount,required bool locksubject, required double ratingcounter}) {

  return Padding(
    padding: const EdgeInsets.only(top: 2.0),
    child: Container(
      width: double.infinity,
      height: 500,
      child:
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(children: [
              Image(image: AssetImage('assets/png/userpicture.png'), width: 36, height: 36,),
              SizedBox(width: 10,),
              Text('username', style: TextStyle(fontSize: 25, fontFamily: 'OpenSans', fontWeight: FontWeight.w500),)],),
        Stack(
          children:[ Container(
           height: 219,
           decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage(imagename), fit: BoxFit.cover),),),
            Padding(
              padding: const EdgeInsets.only(top: 209),
              child: InkWell(
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      color: '#4586D6'.toColor(),
                      child: Center(child: Text('Send message', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 24),)))),
            ),
          ]
        ),
         Center(child: Padding(
           padding: const EdgeInsets.only(top: 4.0),
           child: Text(coursename, style: TextStyle(fontSize: 20,fontFamily: 'Rubik', fontWeight: FontWeight.w400),),
         )),
         Padding(
           padding: const EdgeInsets.only(top: 8.0),
           child: Container(
             height: 20,
             width: double.infinity,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
             RatingBar.builder(
             initialRating: ratingcounter,
             minRating: 0,
             direction: Axis.horizontal,
             allowHalfRating: false,
             itemCount: 5,
             itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
             itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), onRatingUpdate: (r){},),
                 Padding(
                   padding: const EdgeInsets.only( right: 20),
                   child: InkWell(
                     child: Image(image: AssetImage('assets/png/saveicon.png'),width: 17, height: 21,),
                   ),
                 ),        ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 25.0, top: 20),
           child: Text('View all $commentcount comments', style: TextStyle(fontFamily: 'OpenSans',color: '#CFCFCF'.toColor(), fontSize: 20, fontWeight: FontWeight.w400),),
         ),
          Card(
            elevation: 0.5,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Add comment...',
                border: InputBorder.none,
                hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,fontFamily: 'OpenSans', color: '#CFCFCF'.toColor()),
              ),
            ),
          ),
          ],),),
  );
}
