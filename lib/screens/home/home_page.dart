import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/screens/home/popular_categories.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';
import 'search.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffFBFAF3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.person,
          size: 35,
          color: Colors.black,
        ),
        title: Text(
          'Medicine'.toUpperCase(),
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
         const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Search(h: h, w: w),


              SizedBox(
                height: h * .02,
              ),
              uploadContainer(h, w),
              SizedBox(
                height: h * .02,
              ),


          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: PageView(
                  children:[

                    sliderImage(h, w,'assets/images/img.png'),
                    sliderImage(h, w,'assets/images/img.png'),
                    sliderImage(h, w,'assets/images/img.png'),

                  ],

                  onPageChanged: (index){
                    setState(() {
                      pageIndex=index;
                    });
                  },
                ),
              ),
              Positioned(
                right: 180,
                top: 190,

                child: CarouselIndicator(
                  color: Colors.black,
                  activeColor:Colors.white ,

                  count: 3,
                  index: pageIndex,
                ),
              ),
            ],
          ),



              SizedBox(
                height: h * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  InkWell(
                    onTap: () => Get.to(PopularCategories()),
                    child: Row(
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: w * .02,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * .02,
              ),

              CustomGridView(height: 0.4),

            ],
          ),
        ),
      ),
    );
  }

  Container sliderImage(double h, double w,String img) {
    return Container(
              height: h * 0.2,
              width: w,
              decoration: BoxDecoration(
                  color: Color(0xffD7D0FF),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/img.png',
                    ),
                  )),
            );
  }

  Container uploadContainer(double h, double w) {
    return Container(
              height: h * 0.17,
              width: w,
              decoration: BoxDecoration(
                  color: const Color(0xffD7D0FF),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text('Upload Prescription',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    SizedBox(
                      height: h * .01,
                    ),
                    const Text('Upload a Prescription and Tell Us what you Need. We do the Rest.!',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),),
                    SizedBox(
                      height: h * .02,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Flat 25% off \n on Medicines*',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
                        InkWell(
                          onTap: (){
                            print('object');
                          },
                          child: SizedBox(
                            height: 40,
                            width: 120,

                            child: Material(

                              borderRadius: BorderRadius.circular(8),
                              color:Color(0xff5F48E6) ,
                              child: Center(child: Text('Order Now',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),),
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
            );
  }
}


