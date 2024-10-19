import 'package:first_task2/widget/box_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Size mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: mediaquery.height * 0.1,
        title: const Text('My reviews',style: TextStyle(fontWeight: FontWeight.bold),),
        leading: const Icon(Icons.arrow_back_ios_new),
        centerTitle: true,
        actions: [
          Icon(Icons.search,size: mediaquery.height * 0.04,),
          SizedBox(width: mediaquery.width * 0.01,),
        ],
      ),

      body: const SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            BoxContainer(),

            BoxContainer(),

            BoxContainer(),
          ],
        ),
      ),
    );
  }
}



