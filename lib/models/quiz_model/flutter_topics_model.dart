import 'package:flutter/cupertino.dart';

import '../../services/assets_manager.dart';
import 'coa_questions_model.dart';
import 'flat_questions_model.dart';
import 'sql_questions_model.dart';
import 'os_questions_model.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final String topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: AssetsManager.dbms,
    topicName: "Operating System",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: AssetsManager.os,
    topicName: "DBMS",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: AssetsManager.flat,
    topicName: "FLAT",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: AssetsManager.coa,
    topicName: "COA",
    topicQuestions: layOutQuestionsList,
  ),
];



