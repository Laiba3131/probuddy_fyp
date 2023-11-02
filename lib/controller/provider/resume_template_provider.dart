import 'package:flutter/material.dart';
import 'package:pro_buddy/model/resume_template_model.dart';

class ResumeTemplateProvider extends ChangeNotifier {
  List<ResumeTemplateModel> templateList = [
    ResumeTemplateModel(
        profileImageUrl:
            'https://cdn-blog.novoresume.com/articles/resume-examples/resume-example.webp'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKJRRe7-KqG-iy8qsin7qv7Wpf7em2_rfSPg&usqp=CAU'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDYTh2r9PTPuyawYYtpyV0Outs8SYM1jTI5g&usqp=CAU'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR3-N6YXE53caUYtZjAJgh7qV1f0ktYD70WQ&usqp=CAU'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGOScnEVQfCgYz5IPZ_tUpDelvdEXlEZ7iaA&usqp=CAU'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpm0O1YOCp803hk61UpDazi6lAQA8Vz2sIuw&usqp=CAU'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://cdn-blog.novoresume.com/articles/resume-examples/resume-example.webp'),
    ResumeTemplateModel(
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-8ZX3WQhj_wO5v97DxXfBTOMbcUKFJA32Q&usqp=CAU'),
  ];
}
