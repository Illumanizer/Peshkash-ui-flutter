import 'package:flutter/material.dart';
import 'package:peshkash_ui/components/quantity.dart';

class MyTable extends StatelessWidget {
  final List<Map<String, dynamic>> tableData = [
    {"item": "Cheesy Chicken Pasta", "quantity": 2, "price": 300},
    {"item": "Choco Lava Cake", "quantity": 2, "price": 300},
    {"item": "Garlic Butter Naan", "quantity": 2, "price": 300},
    {"item": "Daal Makhani", "quantity": 2, "price": 300},
  ];

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        _buildTableRow(["Items", "Quantity", "Price"], isHeader: true),
        for (var data in tableData)
          _buildTableRow([
            data["item"],
            data["quantity"].toString(),
            '\$${data["price"]}',
          ]),
        _buildTableRow(["Subtotal", "", "\$${1500}"],
            isHeader: true, istotal: true),
        _buildTableRow(["Discount", "", "\$100"],
            isHeader: true, istotal: true),
      ],
    );
  }

  TableRow _buildTableRow(List<String> values,
      {bool isHeader = false, bool istotal = false}) {
    return TableRow(
      children: values
          .map((value) => TableCell(
                child: Padding(
                  padding: istotal
                      ? const EdgeInsets.only(top: 8, left: 8, right: 8)
                      : const EdgeInsets.all(8.0),
                  child: values.indexOf(value) == 1 && !isHeader
                      ? Center(child: QuantityWidget(quantity: "1"))
                      : Text(
                          value,
                          style: TextStyle(
                            fontWeight: isHeader || values.indexOf(value) == 2
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: isHeader ? 18 : 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                ),
              ))
          .toList(),
    );
  }
}
