import 'package:e_shop/models/products.dart';
import 'package:e_shop/others/app_routes.dart';
import 'package:e_shop/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product products;
  const ProductItem({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: products,
            );
          },
          child: Image.network(
            products.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
              color: Theme.of(context).accentColor,
              onPressed: () {},
              icon: const Icon(
                Icons.local_grocery_store_outlined,
              )),
          title: Text(
            products.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              color: Theme.of(context).accentColor,
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              )),
        ),
      ),
    );
  }
}