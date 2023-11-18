import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color colro=  Color(0xffFFEADC);
  int currentPageIndex = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: 'Search product',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(60.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(60.0)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Badge(
                              label: Text('3'),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.black,
                              ))),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 105.0,
                      width: 380.0,
                      decoration: BoxDecoration(
                        color: Colors.purple[900],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'A Summer Surprise \n ',
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Cashback 20%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFFEADC),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            SvgPicture.asset('asset/images/icons/Flash Icon.svg'),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'asset/images/icons/Bill Icon.svg'),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'asset/images/icons/Game Icon.svg'),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'asset/images/icons/Gift Icon.svg'),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('asset/images/icons/Discover.svg'),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Flash \n Deal ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Bill ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Game ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Daily \n Gift ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'More ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Special for you',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 170.0,
                    ),
                    Text(
                      'see more',
                      style: TextStyle(color: Colors.grey[500], fontSize: 15.0),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                SizedBox(height:150,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(padding: EdgeInsets.all(5.0)),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            child: Image.asset(
                              'asset/Image Banner 2.png',
                              width: 250.0,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Smart phones \n ',
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: '18 brands',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.all(5.0)),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            padding: EdgeInsets.fromLTRB(0, 0, 140.0, 0),
                            child: Image.asset(
                              'asset/Image Banner 3.png',
                              width: 250,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Fashion \n ',
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: '24 brands',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      'Popular Products',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 150.0,
                    ),
                    Text(
                      'see more',
                      style: TextStyle(color: Colors.grey[500], fontSize: 15.0),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),

                SizedBox(height: 100,width: double.infinity,
                  child: ListView(scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Image.asset(
                          'asset/Image Popular Product 1.png',
                          width: 130.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Image.asset(
                          'asset/Image Popular Product 2.png',
                          width: 150.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Image.asset(
                          'asset/Image Popular Product 3.png',
                          width: 150.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Wireless Controller\n for PS4 ',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Nike Sport White- \nMan pant ',
                      style: TextStyle(color: Colors.black),
                    ),

                    Text(
                      'Glove \n Polyg ',
                      style: TextStyle(color: Colors.black),
                    ),

                  ],
                ),

                SizedBox(height: 100,width: double.infinity,
                  child: ListView(scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Text(
                            ' \$64.99',
                            style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 20.0,),
                          Container(decoration: BoxDecoration(
                              color: colro,
                              shape: BoxShape.circle,),
                            child: IconButton(onPressed: (){
                              setState(() {
                                colro =Colors.deepOrangeAccent;
                              });

                            }, icon: SvgPicture.asset('asset/Heart Icon.svg',width: 20),),
                          ),
                        ],
                      ),
                      SizedBox(width: 40.0,),
                      Row(
                        children: [
                          Text(
                            ' \$50.5',
                            style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 20.0,),
                          Container(decoration: BoxDecoration(
                              color: colro,
                              shape: BoxShape.circle),
                            child: IconButton(
                                icon: SvgPicture.asset('asset/Heart Icon.svg',width: 20.0,),
                              onPressed: (
                                  ){
                                colro =Colors.deepOrangeAccent;
                              },
                            ),
                          ),

                        ],
                      ),
                      SizedBox(width: 40.0,),

                      Row(
                        children: [
                          Text(
                            ' \$36.98',
                            style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 20.0,),
                          Container(decoration: BoxDecoration(
                              color:colro,
                              shape: BoxShape.circle),
                            child: IconButton(onPressed: (
                                ){
                              colro =Colors.deepOrangeAccent;
                            }, icon: SvgPicture.asset('asset/Heart Icon.svg',width: 20.0,),),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(  type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey[500],
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items:[
          BottomNavigationBarItem(icon: SvgPicture.asset('asset/Shop Icon.svg',), label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('asset/Heart Icon.svg',), label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('asset/Chat bubble Icon.svg',), label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('asset/User Icon.svg',), label: ''),
        ],
      )
    );
  }
}
