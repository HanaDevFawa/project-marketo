import 'package:flutter/material.dart';
import 'package:project_teamd/components/order/order_horis_card.dart';
import 'package:project_teamd/pages/seller/seller_order_details.dart';

import '../../components/appText/m_text.dart';
import '../../constants/color_pallete.dart';
import '../../model/order.dart';

class SellerOListPage extends StatelessWidget {
  const SellerOListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Orders order = const Orders(
      id: 'id',
      orderStatus: 'In Progress',
      orderDate: 'orderDate',
      shopName: 'shopName',
      numOfProduct: 'numOfProduct',
      products: [],
    );
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            iconTheme: const IconThemeData(color: Colors.black),
            elevation: 0.5,
            centerTitle: true,
            backgroundColor: greyLight,
            title: MText(
              text: 'My Orders',
              fontweight: FontWeight.bold,
              color: green,
              size: 20,
            )),
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            padding: const EdgeInsets.all(12),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SOrderDetials(order: order)));
                },
                child: orderHorisCard(order: order, icon: Icons.done)),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 12,
            ),
          ),
        ]));
  }
}
