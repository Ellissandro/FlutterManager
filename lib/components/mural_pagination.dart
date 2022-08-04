import 'package:flutter/material.dart';
import 'package:manager/components/pagination_square.dart';

import '../core/app_colors.dart';

class MuralPagination extends StatelessWidget {
  const MuralPagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Container(
          height: 7,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(169, 144, 252, 1),
          ),
        ),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
        const SizedBox(width: 5),
        const PaginationSquare(),
      ],
    );
  }
}
