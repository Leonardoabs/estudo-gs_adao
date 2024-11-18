import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_request/domain/student.dart';

class StudentRequest {
  final dio = Dio();

  Future<List<Student>> getStudents() async {
    final studentJson = await dio.get('https://gdapp.com.br/api/students');
    final responseData = studentJson.data;

    return List<Student>.from(
      responseData.map((x) => Student.fromJson(x)),
    );
  }

  Future<bool> createStudent(Student student) async {
    final response = await dio.post(
      'https://gdapp.com.br/api/student',
      data: student.toJson()
    );

    return true;
  }
}
