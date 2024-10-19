import 'package:flutter/material.dart';
class BoxContainer extends StatelessWidget {
  const BoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        // color: Colors.red,
        decoration: BoxDecoration(
          //  color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.06),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(1, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: mediaquery.height * 0.02,horizontal: mediaquery.width * 0.03),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: Image.asset('assets/images/coffee.jpg', fit: BoxFit.cover),
                        ),
                      ),

                      SizedBox(width: mediaquery.width * 0.08,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coffe Table",style: TextStyle(color: Color(0xff656565),fontSize: mediaquery.width * 0.05),),
                          Text("\$ 50.00",style: TextStyle(color: Colors.black,fontSize: mediaquery.width * 0.05,fontWeight: FontWeight.bold),),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: mediaquery.height * 0.01,),

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i=0; i<5; i++)
                        Icon(Icons.star,color: Colors.yellow,size: mediaquery.width * 0.07,),

                      SizedBox(width: mediaquery.width * 0.25,),
                      Text("${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",style: TextStyle(color: Color(0xff656565),fontSize: mediaquery.width * 0.04),),
                    ],
                  ),

                  SizedBox(height: mediaquery.height * 0.01,),
                  Text("Refresh your living space by including this modern and contemporary coffee table. Made of highly durable engineered wood this coffee table is sturdy and boasts of a fantastic finish that cannot be missed.",style: TextStyle(color: Colors.black,fontSize: mediaquery.width * 0.045),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
