import 'package:flutter/material.dart';

import '../../data/data.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.h,
    required this.w,
  }) : super(key: key);

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showSearch(context: context, delegate: SearchD());
      },
      child: Container(
        height: h * 0.05,
        width: w,
        decoration: BoxDecoration(
            color: Color(0xffF3F2E9),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search Medicine & Health Products',
                style: TextStyle(color: Color(0xff818286)),
              ),
              Icon(
                Icons.search,
                color: Color(0xff818286),
              )
            ],
          ),
        ),
      ),
    );
  }
}




class SearchD extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = "";
      }, icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));

  }

  @override
  Widget buildResults(BuildContext context) {
    return Center() ;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterProduct = productList.where((e) =>e.prodName!.contains(query)).toList();
    double h =MediaQuery.of(context).size.height;
    return  SizedBox(
      height: double.infinity,
      child: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 1.8 / 2.7,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: query == "" ? productList.length : filterProduct.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(
              children: [

                SizedBox(
                  height: h * .02,
                ),
                Container(

                  height: h * .14,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child:Image.asset(productList[index].img.toString(),scale: 2.5,),
                ),
                SizedBox(
                  height: h * .01,
                ),
                Text(
                  productList[index].prodName.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            );
          }),
    );
  }
}
