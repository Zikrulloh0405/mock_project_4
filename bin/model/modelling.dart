import 'dart:convert';

List<University> fromJsonToObject(String data) =>
    List<University>.from(jsonDecode(data).map((e) => University.fromJson(e)));

String fromObjectTojson(University university) =>
    jsonEncode(university.toJson());

class University {
  late String courseCode, courseName, department;
  late int credits;
  late List<Instructors> instructors;
  late Schedule schedule;
  late Enrollment enrollment;
  late List<Textbooks> textbooks;

  University({
    required this.courseCode,
    required this.courseName,
    required this.department,
    required this.credits,
    required this.instructors,
    required this.schedule,
    required this.enrollment,
    required this.textbooks,
  });

  University.fromJson(Map<String, dynamic> json) {
    courseCode = json["courseCode"];
    courseName = json["courseName"];
    department = json["department"];
    credits = json["credits"];
    instructors = List<Instructors>.from(
        json["instructors"].map((e) => Instructors.fromJson(e)));
    schedule = Schedule.fromJson(json["schedule"]);
    enrollment = Enrollment.fromJson(json["enrollment"]);
    textbooks = List<Textbooks>.from(
        json["textbooks"].map((e) => Textbooks.fromJson(e)));
  }

  Map<String, dynamic> toJson() {
    return {
      "courseCode": courseCode,
      "courseName": courseName,
      "department": department,
      "credits": credits,
      "instructors": instructors,
      "schedule": schedule,
      "enrollment": enrollment,
      "textbooks": textbooks,
    };
  }
}

class Instructors {
  late String name, office, email;

  Instructors.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    office = json["office"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() =>
      {"name": name, "office": office, "email": email};
}

class Schedule {
  late List<String> days;
  late String time;

  Schedule.fromJson(Map<String, dynamic> json) {
    days = List<String>.from(json["days"].map((e) => e.toString()));
    time = json["time"];
  }

  Map<String, dynamic> toJSon() => {
        "days": days,
        "time": time,
      };
}

class Enrollment {
  late int currentStudents, capacity;

  Enrollment.fromJson(Map<String, dynamic> json) {
    currentStudents = json["currentStudents"];
    capacity = json["capacity"];
  }

  Map<String, dynamic> toJson() => {
        "currentStudents": currentStudents,
        "capacity": capacity,
      };
}

class Textbooks {
  late String title, author, isbn;

  Textbooks.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    author = json["author"];
    isbn = json["isbn"];
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "author": author,
        "isbn": isbn,
      };
}
