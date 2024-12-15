import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {

static const routeName = '/Categories-Screen';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('Categories screen'),
      ),
    );
  }
}