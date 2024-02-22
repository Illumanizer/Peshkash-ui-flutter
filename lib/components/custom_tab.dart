import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  final String title;
  const CustomTab({super.key, required this.title});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
