import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<Map<String, dynamic>> questions = [];

  void _addQuestion(String questionText) {
    if (questionText.isNotEmpty) {
      setState(() {
        questions.insert(0, {
          'text': questionText,
          'timestamp': DateTime.now(),
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions & Answers '),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search or ask a question',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                var question = questions[index];
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.question_answer),
                    title: Text(question['text']),
                    subtitle: Text(_getTimeDifference(question['timestamp'])),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddQuestionDialog();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red[800],
        tooltip: 'Ask a New Question',
      ),
    );
  }

  void _showAddQuestionDialog() {
    TextEditingController _questionController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add a Question'),
          content: TextField(
            controller: _questionController,
            decoration: InputDecoration(hintText: "Type your question here..."),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                _addQuestion(_questionController.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String _getTimeDifference(DateTime timestamp) {
    Duration diff = DateTime.now().difference(timestamp);
    if (diff.inMinutes < 60) {
      return '${diff.inMinutes} minutes ago';
    } else if (diff.inHours < 24) {
      return '${diff.inHours} hours ago';
    } else {
      return DateFormat('MMM d, y').format(timestamp);
    }
  }
}
