import 'package:codelab_1/pages/splash_page.dart';
import 'package:codelab_1/widgets/app_mount_listview.dart';
import 'package:flutter/material.dart';

import '../widgets/app_header.dart';
import '../widgets/app_search.dart';
import '../widgets/app_category_list.dart';
import '../widgets/app_bottom_bar.dart';

class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: mainColor),
          title: Center(
            child: Icon(
              Icons.terrain,
              color: mainColor,
              size: 40,
            ),
          ),
          actions: const [
            SizedBox(
              width: 40,
              height: 40,
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            padding: const EdgeInsets.all(30),
            color: mainColor,
            alignment: Alignment.bottomLeft,
            child: const Icon(Icons.terrain, color: Colors.white, size: 80),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(mainColor),
            AppSearch(mainColor),
            Expanded(
              child: AppMountListView(),
            ),
            AppCategoryList(mainColor),
            const AppBottomBar(),
          ],
        ));
  }
}
