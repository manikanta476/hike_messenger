import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hike_messenger/contants/web_constants.dart';
import 'package:hike_messenger/dashboard_module/ProductsResponseModel.dart';
import 'package:http/http.dart' as http;

import 'AlbumResponseModel.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  late Future<List<ProductsResponseModel>> futureProducts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProducts = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<ProductsResponseModel>>(
          future: futureProducts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.network("${snapshot.data![index].image ?? "placeholder"}", width: 80, height: 80,),
                            Text("${index+1}: ${snapshot.data![index].title ?? "placeholder"}"),
                          ],
                        ));
                  }
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

///with return type and without input params
  Future<List<ProductsResponseModel>> fetchProducts() async {
    final response = await http.get(Uri.parse(WebConstants.getProductsList));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print("success code executed ${jsonDecode(response.body)}");

      List<ProductsResponseModel> productsResponseData = (jsonDecode(response.body) as List).map((data) => ProductsResponseModel.fromJson(data)).toList();

      return productsResponseData;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }


}
