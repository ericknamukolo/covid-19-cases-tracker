import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GlobalLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        loadingCard(),
        loadingCard(),
        loadingCard(),
        loadingCard(),
      ],
    );
  }

  Widget loadingCard() {
    return Card(
      elevation: 1,
      child: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Shimmer.fromColors(
          baseColor: Color(0xFF212121),
          highlightColor: Color(0xFF323232),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 10,
                color: Colors.white,
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                width: double.infinity,
                height: 15,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 24,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
