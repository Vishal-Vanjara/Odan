class CatFact {
  final String fact;
  final String length;

  const CatFact({required this.fact, required this.length});

  factory CatFact.fromJson(Map<String, dynamic> json) {
    return CatFact(
      fact: json['fact'] as String,
      length: json['length'],
    );
  }
}
