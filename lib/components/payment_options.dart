// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class payment_options extends StatelessWidget {
  const payment_options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.grey[300],
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          //Cash
          Spacer(),
          Expanded(
            child: RadioListTile(
              title: Text("Cash"),
              value: "cash",
              groupValue: "cash",
              onChanged: (state) {},
            ),
          ),
          Spacer(),
          Expanded(
            child: RadioListTile(
              title: Text("Card"),
              value: "Card",
              groupValue: "payment",
              onChanged: (state) {},
            ),
          ),
          Spacer(),
          Expanded(
            child: RadioListTile(
              title: Text("Others"),
              value: "Others",
              groupValue: "payment",
              onChanged: (state) {},
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
