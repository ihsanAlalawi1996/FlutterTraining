import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/Home/DetailsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = new PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade300,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
          body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(18),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,

              child: Column(
                children: [
                  Row(
                    children: [

                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(18),),
                            child: const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search product',
                                hintStyle: TextStyle(fontSize: 13),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 11),
                      Container(
                          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(30.0),),
                          child: IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {},),
                        ),
                      const SizedBox(width: 11),
                      Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(30),),
                              child: IconButton(icon: const Icon(Icons.notifications_none_outlined), onPressed: () {},),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: const Text('3', style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold,),),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25, 15, 20, 8),
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0xFF4b3298),
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: const Text("A Summer Surprise",style: TextStyle(fontSize: 13,color: Colors.white),)),
                        const SizedBox(height: 4,),
                        Container(
                            alignment: Alignment.topLeft,
                            child: const Text("Cachback 20%",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w500)))
                      ],

                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFffeadd),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:  SvgPicture.asset("assets/Icons/Flash Icon.svg",width: 22,color: const Color(0xFFc88b6c)),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFffeadd),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:  SvgPicture.asset("assets/Icons/Bill Icon.svg",width: 22,color: const Color(0xFFc88b6c),),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFffeadd),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:  SvgPicture.asset("assets/Icons/Game Icon.svg",width: 22,color: const Color(0xFFc88b6c)),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFffeadd),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:  SvgPicture.asset("assets/Icons/Gift Icon.svg",width: 22,color: const Color(0xFFc88b6c)),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFffeadd),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:  SvgPicture.asset("assets/Icons/Discover.svg",width: 22,color: const Color(0xFFc88b6c)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: const Center(
                          child:  Text("Flash\nDeal",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),textAlign:TextAlign.center,),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: const Center(
                          child:  Text("Bill",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),textAlign:TextAlign.center,),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: const Center(
                          child:  Text("Game",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),textAlign:TextAlign.center,),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: const Center(
                          child:  Text("Daily\nGift",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),textAlign:TextAlign.center,),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: const Center(
                          child:  Text("More",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),textAlign:TextAlign.center,),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:  [
                     const Text("Special for you", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                     TextButton(onPressed: () {},
                         child:  Text("See More", style: TextStyle(color: Colors.grey.shade300,fontSize: 13,))
                     ),
                   ],
                 ),
                  const SizedBox(height: 4,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                        children: [
                          Container(
                              width: 220,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.srcOver),
                                  image: const AssetImage('assets/images/Image Banner 2.png',),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12,left: 12),
                                child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text("Smartphone",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                            SizedBox(height: 5,),
                                            Text("18 Brands",style: TextStyle(color: Colors.white,fontSize: 11),)
                                          ],

                                ),
                              ),
                            ),
                          const SizedBox(width: 18,),
                          Container(
                            width: 220,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.srcOver),
                                image: const AssetImage('assets/images/Image Banner 3.png',),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12,left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Fashion",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                  SizedBox(height: 5,),
                                  Text("24 Brands",style: TextStyle(color: Colors.white,fontSize: 11),)
                                ],

                              ),
                            ),
                          ),

                        ],
                      ),

                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text("Popular Products", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                      TextButton(onPressed: () {},
                          child:  Text("See More", style: TextStyle(color: Colors.grey.shade300,fontSize: 13,))
                      ),
                    ],
                  ),
                  const SizedBox(height: 11,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage() ));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/images/Image Popular Product 1.png',),
                                      scale: 4 ,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 11,),
                              const Text("Wireless Controller\nfor PS4\u2122",style: TextStyle(fontSize: 11),),
                              const SizedBox(height: 5,),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("\$64.99",style: TextStyle(fontSize: 16,color: Colors.orange.shade800,fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 35,),
                                  CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.deepOrangeAccent.withOpacity(.1),
                                      child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Icons/Heart Icon_2.svg",colorFilter: const ColorFilter.mode(Colors.redAccent, BlendMode.srcIn))))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            children: [
                              Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/Image Popular Product 2.png',),
                                    scale: 4 ,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Text("Nike Sport White -\nMan Pants",style: TextStyle(fontSize: 11),),
                              const SizedBox(height: 11,),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("\$50.5",style: TextStyle(fontSize:  16,color: Colors.orange.shade800,fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 40,),
                                  CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey.shade200,
                                      child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Icons/Heart Icon_2.svg",colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn))))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            children: [
                              Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/glap.png',),
                                    scale: 4 ,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Text("Gloves Half Finger -\nPolygon ",style: TextStyle(fontSize: 11),),
                              const SizedBox(height: 11,),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("\$36.99",style: TextStyle(fontSize:  16,color: Colors.orange.shade800,fontWeight: FontWeight.bold),),
                                  const SizedBox(width:40,),
                                  CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey.shade200,
                                      child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Icons/Heart Icon_2.svg",colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn))))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            children: [
                              Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/Image Popular Product 3.png',),
                                    scale: 4 ,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Text("Cycling Helmet -\nRed and Yellow",style: TextStyle(fontSize: 11),),
                              const SizedBox(height: 11,),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("\$12.50",style: TextStyle(fontSize: 17,color: Colors.orange.shade800,fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 30,),
                                  CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey.shade200,
                                      child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Icons/Heart Icon_2.svg",colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn))))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),


                  ),


                ],
              ),
            ),
          ),



          bottomNavigationBar: Container(
            height: 60,
            decoration: const BoxDecoration(color: Colors.white,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/Icons/Shop Icon.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/Icons/Heart Icon.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/Icons/Chat bubble Icon.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/Icons/User Icon.svg")),
              ],
            ),
          ),
      ),
    );
  }
}

Widget GetImage(String imagePath, String text) {
  return Container(
    color: Colors.blue,
    child: Stack(
      children: [
        Image.asset(imagePath,width: 200,height: 100,),
        const SizedBox(height: 16),
        Positioned(
          top: 8,
          left: 8,
          child: Align(
              child:
              Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ),
        ),
      ],
    ),
  );
}
