import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/Home/HomePage.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedPictureIndex = 0;
  List<String> pictureUrls = [
    'assets/images/ps4_console_white_1.png',
    'assets/images/ps4_console_white_2.png',
    'assets/images/ps4_console_white_3.png',
    'assets/images/ps4_console_white_4.png',
  ];
  @override
  Widget build(BuildContext context) {
      return  SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(height: 40,),
            body: Container(
              color: Colors.grey.shade100,
              child: Column(
               children: [
                 // back icon and rating..........................................................................
                 Row(
                   children: [
                     const SizedBox(width: 10,),
                     Container(
                       width: 39,
                       height: 39,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(100)
                       ),
                       child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_sharp,size: 20,),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),);}
                        ),
                     ),

                     const SizedBox(width: 220,),

                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                           borderRadius: BorderRadius.circular(15)
                       ),
                       child: Row(
                       children: const [
                         SizedBox(width: 10,height: 30,),
                         Text("4.8",style: TextStyle(fontSize: 12),),
                         SizedBox(width: 5,),
                         Icon(Icons.star,color: CupertinoColors.systemYellow,size:16 ,),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
                 // pictures view..........................................................................
                 Container(
                   constraints: const BoxConstraints(
                     maxWidth: double.infinity,
                     minHeight: 100.0,
                   ),
                   child: Column(
                     children: [
                       Image.asset("assets/images/ps4_console_white_${selectedPictureIndex+1}.png",width: 230,height: 180,),

                       const SizedBox(height: 15),
                       // the row of mini pictures
                       Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(pictureUrls.length, (index) {
                      return GestureDetector(
                        onTap: () {setState(() {selectedPictureIndex = index;});},
                        // the mini pictures
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          width: 50.0,
                          height: 45.0,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: selectedPictureIndex == index ? Colors.orange : Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(pictureUrls[index], fit: BoxFit.cover,),
                        ),
                      );
                    }),
                  ),
                ],
                   ),
                 ),
                 const SizedBox(height: 10,),
                 // details and texts...........................................................................
                 Container(

                   padding: EdgeInsets.only(top: 15,left: 15),
                   alignment: Alignment.centerLeft,
                   width: double.infinity,
                   height: 220,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30)
                   ),
                   child: Column(
                     children:  [
                       const SizedBox(height: 10,),
                       const Align(
                           alignment: Alignment.centerLeft,
                           child: Text("Wireless Controller for PS4\u2122",style: TextStyle(fontSize: 17),)),
                       const SizedBox(height: 10,),
                       // the heart button
                       Align(
                         alignment: Alignment.topRight,
                         child: Container(
                             width: 60,
                             decoration:  BoxDecoration(
                                 color: Colors.deepOrangeAccent.withOpacity(.1),
                                 borderRadius: const BorderRadius.only(
                                     topLeft: Radius.circular(15),
                                     bottomLeft: Radius.circular(15))
                             ),
                             child: IconButton(
                               onPressed: (){},
                               icon: Icon(Icons.favorite),
                               color: Colors.redAccent,
                             )
                         ),
                       ),
                       const Align(
                         alignment: Alignment.centerLeft,

                         child: Text(
                           "wireless Controller for PS4 \u2122 gives you what\n"
                               "you want in your gaming from over precision\ncontrol your games to sharing ...",
                           style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),
                         ),
                       ),
                       const SizedBox(height: 10,),
                       Align(
                         alignment: Alignment.centerLeft,
                         child: GestureDetector(
                           onTap: dosomething(),
                           child:  Text("See More Details   >",
                             style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.orange.shade900,),
                           ),
                         ),
                       )
                     ],
                   ),

                 ),
                 // colors bar /////////////////////////////////////////////////////////////////////////////////
                 const SizedBox(height: 30,),
                 Column(
                   children: [
                     Row(
                       children: [
                         // Color Dots //////////////////////////////////////////////////////////////////////////
                         const SizedBox(width: 20,),
                         Container(
                           height: (30),
                           width: (30),
                           decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                         ),
                         const SizedBox(width: 10,),
                         Container(
                           height: (30),
                           width: (30),
                           decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.purple),
                         ),
                         const SizedBox(width: 10,),
                         Container(
                           height: (30),
                           width: (30),
                           decoration:  BoxDecoration(shape: BoxShape.circle, color: Colors.yellow.shade300),
                         ),
                         const SizedBox(width: 10,),
                         Container(
                           height: (30),
                           width: (30),
                           decoration:  const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                         ),
                         const SizedBox(width: 65,),
                         // Minus Icon ////////////////////////////////////////////////////////////////////////////
                         Container(
                           height: (40),
                           width: (40),
                           decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                           child: IconButton(onPressed: () {},
                               icon:const Icon(Icons.remove,color: Colors.deepOrange,)
                           ),
                         ),
                         const SizedBox(width: 20,),

                         // Plus Icon  ////////////////////////////////////////////////////////////////////////////
                         Container(
                           height: (40),
                           width: (40),
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white
                           ),
                           child: IconButton(

                               onPressed: () {},
                               icon:Icon(Icons.add,color: Colors.deepOrange,)

                           ),),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 30,),
                 Container(
                   child: MaterialButton(
                     onPressed:() {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const HomePage()),
                       );},
                     shape: StadiumBorder(),
                     color: Colors.orange.shade800,
                     textColor: Colors.white,
                     height: 53,
                     minWidth: 275,
                     child: const Text("Add To Cart",style: TextStyle(fontSize: 16)),

                   ),
                 ),
               ],
        ),
      ),
    ));
  }

  dosomething() {}

  GestureDetector colorDot(int index){
    return GestureDetector(

    );
  }
}


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  CustomAppBar({required this.height});
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.green, // <-- SEE HERE
        statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
        statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
      ),
      backgroundColor: Colors.grey.shade300,
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}


