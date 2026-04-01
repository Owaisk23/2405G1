import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
    var products = FirebaseFirestore.instance.collection('cars').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DATA FETCH FROM DATABASE"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: StreamBuilder(
          stream: products,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var productList = snapshot.data!.docs;
              return ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(productList[index]['carName']),
                    subtitle: Text(productList[index]['carDesc']),
                    leading: CircleAvatar(
                      child: Image.network(productList[index]['carImage'], height: 40,),),
                    trailing: Text(productList[index]['carPrice'].toString()),
                  );
                },
              );
            }else{
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}