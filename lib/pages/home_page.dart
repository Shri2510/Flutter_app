import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalouge/models/catalog.dart';
import 'package:flutter_catalouge/widgets/drawer.dart';
import 'package:flutter_catalouge/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    final decodeData = jsonDecode(catalogJson);
    // print(decodeData);
    final productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(30, (index) => CatalogModel.items[0]);
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name,
                            style: TextStyle(color: Colors.white)),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                        child: Text(item.price.toString(),
                            style: TextStyle(color: Colors.white)),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length)
            // ListView.builder(
            //     itemCount: CatalogModel.items.length,
            //     itemBuilder: ((context, index) {
            //       return ItemWidget(item: CatalogModel.items[index]);
            //     }),
            //   )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
