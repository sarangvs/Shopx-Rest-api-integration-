import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopx/instance.dart';
import 'package:shopx/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ShopX",
            style: GoogleFonts.k2d(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 22.sp
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.view_list_rounded,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {
                  controller.getProducts();
                },
                icon: const Icon(
                  Icons.grid_view,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Obx(() {
                  return StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: 20,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        );
                      },
                      staggeredTileBuilder: (index) {
                        return const StaggeredTile.fit(1);
                      });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
