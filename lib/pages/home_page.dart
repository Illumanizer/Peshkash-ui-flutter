// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:peshkash_ui/components/my_table.dart';

import '../components/payment_options.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  var screenWidth;

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("PeshKash",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 65, 38))),
            ), // replace with your logo url
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Tab(
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Tab(
                child: Text(
                  'Offer',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Tab(
                child: Text(
                  'Help',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 20.0),
              child: Tab(
                child: Text(
                  'Other',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(4.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Dine in
                  Text("Dine-in",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 9, 65, 38))),
                  //Take Away
                  SizedBox(width: 130,),
                  Text("Take away",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 9, 65, 38))),
                ],
              ),
            ),
            //Header
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Bill For
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Bill For:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                //Table no.
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.green[800],
                  ),
                  child: Text("Table no.",style: TextStyle(fontWeight: FontWeight.w900),),
                ),
              ],
            ),
            Divider(color: Colors.grey),

            //Table
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: MyTable(),
                ),
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    width: 10.0,
                  ),
                ),
              ],
            ),

            Divider(color: Colors.grey),

            //Total
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45, top: 10, bottom: 10),
                  child: Text("Total Payable",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                ),
                SizedBox( width: 320,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only( top: 10, bottom: 10),
                  width: 100,                  
                  child: Text("\$600",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            //payment options
            payment_options()
          ],
        ),
      ),
    );
  }
}
