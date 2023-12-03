import 'package:flutter/material.dart';
import 'package:flutter_online_shop/util/dimensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Dimensions(context).height,
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: Dimensions(context).height * .4,
          )
        ]),
      ),
    );
  }
}
