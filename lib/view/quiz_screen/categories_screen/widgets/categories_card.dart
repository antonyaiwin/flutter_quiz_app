import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../model/category_model.dart';
import '../../quiz_screen.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.item,
  });

  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(categoryModel: item),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorConstants.blackFaded,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(
                          item.imageUrl,
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              item.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              '${item.questionsList.length} questions',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: ColorConstants.primaryWhite.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
