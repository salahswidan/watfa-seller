class CardModel {
  final String title;
  final String image;
  final void Function() onTap;

  const CardModel({
    required this.title,
    required this.image,
    required this.onTap,
  });
}
