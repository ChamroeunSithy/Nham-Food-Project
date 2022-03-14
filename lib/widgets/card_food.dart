import 'package:flutter/material.dart';

class CardFood extends StatelessWidget {
  const CardFood(
      {Key? key, required this.img, required this.name, required this.kind})
      : super(key: key);
  final String img, name, kind;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: NetworkImage(
                img,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                kind + " Kinds",
                style: const TextStyle(fontSize: 16.0),
              )
            ],
          ),
          const SizedBox(width: 15.0)
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            color: Colors.black45,
            offset: Offset(1, 1),
          ),
        ],
      ),
    );
  }
}
