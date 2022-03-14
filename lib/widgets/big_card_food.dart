import 'package:flutter/material.dart';

class BigCardFood extends StatelessWidget {
  const BigCardFood(
      {Key? key, required this.img, required this.title, required this.price})
      : super(key: key);
  final String img, title, price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.0,
      width: 220.0,
      // color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220.0,
            width: 220.0,
            decoration: BoxDecoration(
              color: Colors.amber,
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            ),
          ),
          const SizedBox(height: 2.0),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_outline,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_outline,
                color: Colors.amber,
              ),
              Text(
                "(3.0)",
                style: TextStyle(fontSize: 20.0, color: Colors.black38),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  child: const Icon(Icons.add),
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
