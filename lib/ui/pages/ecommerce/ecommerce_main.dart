import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/ecommerce/ecommerce_layout1.dart';
import 'package:flutterui/ui/pages/ecommerce/ecommerce_layout2.dart';
import 'package:flutterui/ui/pages/ecommerce/ecommerce_layout3.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class EcommerceMain extends StatefulWidget {
  EcommerceMain({Key? key}) : super(key: key);

  @override
  _EcommerceMainState createState() => _EcommerceMainState();
}

class _EcommerceMainState extends State<EcommerceMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: _appBarWidget(),
      ),
      body: ListView(
        children: [
          ListViewTile(
            page: EcommerceLayout1(),
            name: 'Layout 1',
          ),
          Divider(),
          ListViewTile(
            page: EcommerceLayout2(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: EcommerceLayout3(),
            name: 'Layout 3',
          ),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Text(
        MyString.ecommerce,
      ),
    );
  }
}
