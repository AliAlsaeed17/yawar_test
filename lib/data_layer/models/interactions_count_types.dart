class InteractionsCountTypes {
  int like;
  int love;
  int care;
  int haha;
  int wow;
  int sad;
  int angry;

  InteractionsCountTypes({
    required this.like,
    required this.love,
    required this.care,
    required this.haha,
    required this.wow,
    required this.sad,
    required this.angry,
  });

  factory InteractionsCountTypes.fromJson(Map<String, dynamic> json) =>
      InteractionsCountTypes(
        like: json["like"],
        love: json["love"],
        care: json["care"],
        haha: json["haha"],
        wow: json["wow"],
        sad: json["sad"],
        angry: json["angry"],
      );

  Map<String, dynamic> toJson() => {
        "like": like,
        "love": love,
        "care": care,
        "haha": haha,
        "wow": wow,
        "sad": sad,
        "angry": angry,
      };
}
