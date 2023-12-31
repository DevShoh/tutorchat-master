import 'package:flutter/material.dart';
import 'package:tutorchat/extentions.dart';
import 'package:tutorchat/models/item.dart';

import '../../widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? searchtextEditingController = TextEditingController();
  @override
  void initState(){
    searchtextEditingController = TextEditingController();
    super.initState();
  }
  @override
  void dispose(){
    searchtextEditingController = TextEditingController();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
       body: SingleChildScrollView(
         child: Stack(
           children: [
             Container(
               width: MediaQuery.of(context).size.width,
               child: Padding(
                 padding: const EdgeInsets.only(top: 49.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 27.0),
                       child: Text('Tutor Chat', style: TextStyle(fontSize: 25, color: '#000000'.toColor(),
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w600),),
                     ),
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 25.0),
                           child: Container(
                             width: 24,
                             height: 29,
                             child: Badge(
                               largeSize: 15,
                               smallSize: 15,
                               alignment: Alignment.center,
                                 offset: Offset(5, -7),
                                 label: Text('2', style: TextStyle(color: Colors.white, fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 8),),
                                 child: Image(image: AssetImage('icon/bellicon.png'),)),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 20.0),
                           child: Container(
                             width: 28,
                             height: 28,
                             child: Badge(
                                 largeSize: 15,
                                 smallSize: 15,
                                 alignment: Alignment.center,
                                 offset: Offset(5, -7),
                                 label: Text('122', style: TextStyle(color: Colors.white, fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 8),),
                                 child: Image(image: AssetImage('icon/sendicon.png'),)),
                           ),
                         ),
                       ],
                     ),

                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 120.0, left: 21),
               child: Text('Start Learning',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500, fontFamily: 'Poppins'), ),
             ),
             Padding(
               padding:  EdgeInsets.only(top: 170.0, left: 30, right: 30),
               child: Container(
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade200,
                       offset: Offset(6.0, 6.0),
                       blurRadius: 15,
                       spreadRadius: 1.0,
                     ),
                     BoxShadow(
                       color: Colors.white,
                       offset: Offset(-6.0, -6.0),
                       blurRadius: 15,
                       spreadRadius: 1.0,
                     ),
                   ],
                   borderRadius: BorderRadius.circular(10),
                   color: Color(0xffFFFFFF),
                 ),
                 child: Card(
                   elevation: 0.0,
                   shadowColor: Colors.black,
                   child: TextField(
                     controller: searchtextEditingController,
                     textInputAction: TextInputAction.search,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       focusColor: Colors.blue,
                       prefixIcon: Icon(Icons.search),
                       hintText: 'what you want to learn?',
                       hintStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                     ),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 243.0),
               child: Container(
                 height: 55,
                 width: double.infinity,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: fanslist.length,
                     itemBuilder: (_, index){
                     return Padding(
                       padding:  EdgeInsets.only(left: index==0 ? 30.0 : 0),
                       child: fans(fanslist[index].imagename, fanslist[index].name),
                     );
                 }),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 310.0),
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: 500,
                 child: ListView.builder(
                     scrollDirection: Axis.vertical,
                     itemCount: 5,
                     itemBuilder: (_, index){
                       return postsubjects(imagename: 'assets/png/math.png',coursename: 'Matematika Bo`yicha Video Kurs(Lar)',commentcount: 50,locksubject: true, ratingcounter:3);
                     }),
               ),
             ),
           ],
         ),
       ),
        bottomNavigationBar: 
          BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black,), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined, color: Colors.black,), label: 'Add Post'),
            BottomNavigationBarItem(icon: Icon(Icons.star_border, color: Colors.black,), label: 'Star'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, color: Colors.black,), label: 'Account'),
          ]),
      ),
    );
  }
}
