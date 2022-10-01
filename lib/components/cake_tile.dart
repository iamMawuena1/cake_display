import 'package:cake_clone_app/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CakeTilePage extends StatelessWidget {
  final String cakeImages;
  final String cakeName;
  final String cakeSubTitle;
  final String cakePrice;
  const CakeTilePage({
    super.key,
    required this.cakeImages,
    required this.cakeName,
    required this.cakePrice,
    required this.cakeSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadin,
        bottom: kDefaultPadin,
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.asset(cakeImages),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cakeName,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                   cakeSubTitle,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: kDefaultPadin / 2,
                right: kDefaultPadin / 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GHc$cakePrice',
                    style: GoogleFonts.bebasNeue(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: designColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
