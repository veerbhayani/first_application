class Mcq {
  int? answerIndex;
  String? question;
  List<String>? options;

  Mcq({
    this.answerIndex,
    this.options,
    this.question,
  });

  factory Mcq.fromJson(Map<String, dynamic> json) => Mcq(
      answerIndex: json['answerIndex'],
      options: json['options'],
      question: json['question']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (options != null) data['options'] = options;
    if (answerIndex != null) data['answerIndex'] = answerIndex;
    if (question != null) data['question'] = question;
    return data;
  }
}
