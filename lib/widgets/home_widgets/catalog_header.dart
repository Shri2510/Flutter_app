import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

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
