import 'package:flutter/material.dart';
import 'package:nike_shoe_shop/components/shoe_tile.dart';
import 'package:nike_shoe_shop/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey, fontSize: 19),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 22,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                'Everyone files.. Some fly longer than others !',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  Shoe shoe = Shoe(
                    name: 'Air',
                    price: '240',
                    imagePath: 'lib/images/1.png',
                    description: 'Cool shoe',
                  );
                  return ShoeTile(
                    shoe: shoe,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                left: 25,
                right: 25,
              ),
              child: Divider(
                color: Colors.black26,
              ),
            )
          ],
        ),
      ),
    );
  }
}
