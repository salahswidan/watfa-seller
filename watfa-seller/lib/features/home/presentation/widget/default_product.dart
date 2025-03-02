import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class DefaultProduct extends StatefulWidget {
  final String image, text;

  const DefaultProduct({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  _DefaultProductState createState() => _DefaultProductState();
}

class _DefaultProductState extends State<DefaultProduct> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h(context),
      width: 185.w(context),
      decoration: BoxDecoration(
        color: ColorsManagers.antiFlashWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 6.w(context), vertical: 3.h(context)),
                  decoration: BoxDecoration(
                      color: ColorsManagers.purple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("45% OFF",
                          style: TextStyles.font10WhiteW600Manrope(context)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isBookmarked = !isBookmarked;
                    });
                  },
                  child: Icon(
                    isBookmarked
                        ? Icons.bookmark
                        : Icons.bookmark_border_outlined,
                    color: isBookmarked
                        ? ColorsManagers.purple
                        : ColorsManagers.blackOlive,
                  ),
                ),
              ],
            ),
            verticalSpacing(10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.image,
                  height: 100.h(context),
                  width: 140.w(context),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(flex: 3, child: SizedBox()),
            Center(
              child: Text(widget.text,
                  style: TextStyles.font14BlackwOliveW400Manrope(context)),
            ),
            Expanded(flex: 3, child: SizedBox()),
            Text(
              "SAR 230.00",
              style: TextStyles.font17BlackOliveW700Manrope(context),
            ),
            Expanded(child: SizedBox()),
            Text(
              "SAR 512.58",
              style: TextStyles.font12BlackOliveW400Manrope(context).copyWith(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Expanded(child: SizedBox()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.star,
                  size: 12,
                  color: ColorsManagers.sunRay,
                ),
                Text("4.9",
                    style: TextStyles.font12BlackOliveW400Manrope(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
