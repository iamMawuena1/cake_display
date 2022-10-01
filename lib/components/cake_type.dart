import 'package:cake_clone_app/components/constant.dart';
import 'package:flutter/material.dart';

class CakeTypePage extends StatelessWidget {
  final String cakeType;
  final bool isSelected;
  final VoidCallback tapped;
  const CakeTypePage({
    super.key,
    required this.cakeType,
    required this.isSelected, 
    required this.tapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadin),
        child: Text(
          cakeType,
          style: TextStyle(
            fontSize: 16.0,
            color: isSelected ? textColor : Colors.white,
          ),
        ),
      ),
    );
  }
}
