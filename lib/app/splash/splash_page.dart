import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Modular.to.pushNamed(
                  '/category',
                  arguments: 'selected category', // by Modular.args.data
                );
              },
              child: const Text('CategoryModule'),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/category/product/ProductX/xyz');
              },
              child: const Text('Product inside CategoryModule'),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed(
                  '/product/Product_X/xyz', // by Modular.args.params
                );
              },
              child: const Text('ProductModule'),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed(
                  '/product/xyz?name=Product_X', // by Modular.args.queryParams
                );
              },
              child: const Text('Product Query Param Module'),
            ),
          ],
        ),
      ),
    );
  }
}
