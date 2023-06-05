enum LectureType { pillar, foundational, tutorial, vision }

extension LectureTypeExt on LectureType {
  String get value {
    switch (this) {
      case LectureType.pillar:
        return "Pillar";
      case LectureType.foundational:
        return "Foundational";
      case LectureType.tutorial:
        return "Tutorial";
      case LectureType.vision:
        return "Vision";
      default:
        return "";
    }
  }
}

extension StringExt on String {
  LectureType get lectureType {
    switch (this) {
      case "Pillar":
        return LectureType.pillar;
      case "Foundational":
        return LectureType.foundational;
      case "Tutorial":
        return LectureType.tutorial;
      case "Vision":
        return LectureType.vision;
      default:
        return LectureType.pillar;
    }
  }
}
