class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text: "Which SQL statement is used to extract data from a database?",
    options: [
      const StateOption(text: "GET", isCorrect: false),
      const StateOption(text: "EXTRACT", isCorrect: false),
      const StateOption(text: "SELECT", isCorrect: true),
      const StateOption(text: "PULL", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "SELECT", isCorrect: true),
  ),
  StateQuestion(
    text: "What does SQL stand for?",
    options: [
      const StateOption(text: "Structured Question Language", isCorrect: false),
      const StateOption(text: "Structured Query Language", isCorrect: true),
      const StateOption(text: "Statement Question Language", isCorrect: false),
      const StateOption(text: "Strong Query Language", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const StateOption(text: "Structured Query Language", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Which type of key is defined to uniquely identify each record in a table?",
    options: [
      const StateOption(text: "Primary key", isCorrect: true),
      const StateOption(text: "Unique key", isCorrect: false),
      const StateOption(text: "Foreign key", isCorrect: false),
      const StateOption(text: "Secondary key", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Primary key", isCorrect: true),
  ),
  StateQuestion(
    text: "What is a relationship in DBMS?",
    options: [
      const StateOption(text: "Link between tables", isCorrect: true),
      const StateOption(text: "Command to manage data", isCorrect: false),
      const StateOption(text: "Type of DBMS", isCorrect: false),
      const StateOption(text: "SQL Command", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const StateOption(text: "Link between tables", isCorrect: true),
  ),
  StateQuestion(
    text: "Which SQL keyword is used to sort the result-set?",
    options: [
      const StateOption(text: "SORT", isCorrect: false),
      const StateOption(text: "ALIGN", isCorrect: false),
      const StateOption(text: "ORDER BY", isCorrect: true),
      const StateOption(text: "GROUP BY", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "ORDER BY", isCorrect: true),
  ),
  StateQuestion(
    text: "Which command is used to delete data from a database?",
    options: [
      const StateOption(text: "REMOVE", isCorrect: false),
      const StateOption(text: "DELETE", isCorrect: true),
      const StateOption(text: "DROP", isCorrect: false),
      const StateOption(text: "CLEAN", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "DELETE", isCorrect: true),
  ),
  StateQuestion(
    text: "What command is used to create a new table in a database?",
    options: [
      const StateOption(text: "CREATE TABLE", isCorrect: true),
      const StateOption(text: "NEW TABLE", isCorrect: false),
      const StateOption(text: "ADD TABLE", isCorrect: false),
      const StateOption(text: "BUILD TABLE", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "CREATE TABLE", isCorrect: true),
  ),
  StateQuestion(
    text: "What type of database model is used by MySQL?",
    options: [
      const StateOption(text: "Hierarchical", isCorrect: false),
      const StateOption(text: "Network", isCorrect: false),
      const StateOption(text: "Relational", isCorrect: true),
      const StateOption(text: "NoSQL", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "Relational", isCorrect: true),
  ),
  StateQuestion(
    text: "Which command is used to add a column to an existing table?",
    options: [
      const StateOption(text: "ADD COLUMN", isCorrect: true),
      const StateOption(text: "INSERT COLUMN", isCorrect: false),
      const StateOption(text: "CREATE COLUMN", isCorrect: false),
      const StateOption(text: "UPDATE COLUMN", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const StateOption(text: "ADD COLUMN", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following is NOT a valid SQL data type?",
    options: [
      const StateOption(text: "STRING", isCorrect: true),
      const StateOption(text: "INTEGER", isCorrect: false),
      const StateOption(text: "BOOLEAN", isCorrect: false),
      const StateOption(text: "FLOAT", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const StateOption(text: "STRING", isCorrect: true),
  ),
  StateQuestion(
    text: "What is the purpose of the SQL JOIN statement?",
    options: [
      const StateOption(text: "To delete records", isCorrect: false),
      const StateOption(text: "To combine rows", isCorrect: true),
      const StateOption(text: "To update records", isCorrect: false),
      const StateOption(text: "To create new tables", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(
        text: "To combine rows from two or more tables", isCorrect: true),
  ),
  StateQuestion(
    text: "Which SQL statement is used to update data in a database?",
    options: [
      const StateOption(text: "UPDATE", isCorrect: true),
      const StateOption(text: "MODIFY", isCorrect: false),
      const StateOption(text: "CHANGE", isCorrect: false),
      const StateOption(text: "ALTER", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const StateOption(text: "UPDATE", isCorrect: true),
  ),
  StateQuestion(
    text:
        "What is the SQL clause used to specify a condition while fetching the data from a single table or joining with multiple tables?",
    options: [
      const StateOption(text: "CONDITION", isCorrect: false),
      const StateOption(text: "WHERE", isCorrect: true),
      const StateOption(text: "HAVING", isCorrect: false),
      const StateOption(text: "WHEN", isCorrect: false),
    ],
    id: 12,
    correctAnswer: const StateOption(text: "WHERE", isCorrect: true),
  ),
  StateQuestion(
    text: "What does DDL stand for in SQL?",
    options: [
      const StateOption(text: "Data Definition Language", isCorrect: true),
      const StateOption(text: "Data Duplication Language", isCorrect: false),
      const StateOption(text: "Data Development Language", isCorrect: false),
      const StateOption(text: "Data Derivation Language", isCorrect: false),
    ],
    id: 13,
    correctAnswer:
        const StateOption(text: "Data Definition Language", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Which command is used to remove a table and all its data from the database?",
    options: [
      const StateOption(text: "REMOVE TABLE", isCorrect: false),
      const StateOption(text: "DROP TABLE", isCorrect: true),
      const StateOption(text: "DELETE TABLE", isCorrect: false),
      const StateOption(text: "CLEAN TABLE", isCorrect: false),
    ],
    id: 14,
    correctAnswer: const StateOption(text: "DROP TABLE", isCorrect: true),
  ),
];
