class Alphabet {

  String letter;
  String description;

  Alphabet({required this.letter, required this.description});

  factory Alphabet.fromJson(Map<String, dynamic> json) {
    return new Alphabet(
      letter: json['letter'] as String,
      description: json['description'] as String,
    );
  }
}