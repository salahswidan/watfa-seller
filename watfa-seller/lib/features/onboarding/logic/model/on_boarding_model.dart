// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnBoardingModel {
  final String title1;
  final String title2;
  final String title3;
  final String description;
  final String image;
  final String? imageSize;
  final String firstSmallImage;
  final String secondSmallImage;
  final double firstSmallImageHeight,
      secondSmallImageHeight,
      firstSmallImageTop,
      secondSmallImageTop,
      firstSmallImageRight,
      secondSmallImageRight;
  OnBoardingModel(
      {
        this.imageSize,
        required this.title1,
      required this.title2,
      required this.title3,
      required this.description,
      required this.image,
      required this.firstSmallImage,
      required this.secondSmallImage,
      required this.firstSmallImageHeight,
      required this.secondSmallImageHeight,
      required this.firstSmallImageTop,
      required this.secondSmallImageTop,
      required this.firstSmallImageRight,
      required this.secondSmallImageRight});
}
