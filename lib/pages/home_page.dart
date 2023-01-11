// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalouge/models/catalog.dart';
import 'package:flutter_catalouge/widgets/drawer.dart';
import 'package:flutter_catalouge/widgets/item_widget.dart';
import 'package:flutter_catalouge/widgets/themes.dart';

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
    var productsData = decodeData["products"];
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
    return Scaffold(
        backgroundColor: MyThemes.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "MOB Store".text.xl5.bold.color(MyThemes.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(
          image: catalog.image,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold.color(MyThemes.darkBluishColor).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              // buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.make(),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        MyThemes.darkBluishColor,
                      ),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      )),
                ).pOnly(right: 8.0)
              ],
            ),
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py16().w40(context);
  }
}

class CatalogImage extends StatelessWidget {
  @override
  final String image;

  const CatalogImage({super.key, required this.image});

  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p16
        .color(MyThemes.creamColor)
        .make()
        .p16();
  }
}
