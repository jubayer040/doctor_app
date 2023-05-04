class Doctor {
  final String title;
  final String subtitle;
  final String img;
  final String location;
  final String schedule;
  final double fees;
  final double ratings;
  final int review;

  const Doctor({
    required this.title,
    required this.subtitle,
    required this.img,
    required this.location,
    required this.schedule,
    required this.fees,
    this.ratings = 4.6,
    required this.review,
  });
}
