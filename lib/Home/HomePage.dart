import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _searchController;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            automaticallyImplyLeading: false,
          ),
          body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20),
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
                        child: IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {},),
                      ),
                    const SizedBox(width: 11),
                    Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(30),),
                            child: IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: () {},),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 15, 20, 8),
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color(0xFF4b3298),
                  ),
                  child:
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("A Summer Surprise",style: TextStyle(fontSize: 13,color: Colors.white),)),
                      SizedBox(height: 4,),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Cachback 20%",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w500)))
                    ],

                  ),
                )

                    // TextField(
                    //   controller: _searchController,
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue,width: 111)),
                    //     fillColor: Colors.grey.shade200,
                    //     filled: true,
                    //     hintText: 'Search Product',
                    //     // suffixIcon: IconButton(icon: Icon(Icons.clear), onPressed: () => _searchController.clear(),),
                    //     prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: () {},),
                    //     // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
                    //   ),
                    // ),


              ],
            ),
          ),
      ),
    );
  }
}
