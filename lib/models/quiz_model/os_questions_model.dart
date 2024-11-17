class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text: "What is the primary function of an operating system?",
    options: [
      const WiidgetOption(
          text: "To manage computer hardware resources", isCorrect: true),
      const WiidgetOption(
          text: "To provide security updates", isCorrect: false),
      const WiidgetOption(
          text: "To increase system performance", isCorrect: false),
      const WiidgetOption(
          text: "To manage software licenses", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(
        text: "To manage computer hardware resources", isCorrect: true),
  ),
  WidgetQuestion(
    text: "Which of the following is NOT an operating system?",
    options: [
      const WiidgetOption(text: "Linux", isCorrect: false),
      const WiidgetOption(text: "Oracle", isCorrect: true),
      const WiidgetOption(text: "Windows", isCorrect: false),
      const WiidgetOption(text: "macOS", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const WiidgetOption(text: "Oracle", isCorrect: true),
  ),
  WidgetQuestion(
    text: "What type of operating system is Windows?",
    options: [
      const WiidgetOption(text: "Multi-user", isCorrect: false),
      const WiidgetOption(text: "Single-tasking", isCorrect: false),
      const WiidgetOption(text: "Multi-tasking", isCorrect: true),
      const WiidgetOption(text: "Real-time", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const WiidgetOption(text: "Multi-tasking", isCorrect: true),
  ),
  WidgetQuestion(
    text: "Which component of the operating system handles system calls?",
    options: [
      const WiidgetOption(text: "Application interface", isCorrect: false),
      const WiidgetOption(text: "Kernel", isCorrect: true),
      const WiidgetOption(text: "Command interpreter", isCorrect: false),
      const WiidgetOption(text: "Memory manager", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const WiidgetOption(text: "Kernel", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "Which operating system is known for its robust multi-user and multi-tasking functionalities primarily used on servers?",
    options: [
      const WiidgetOption(text: "Windows Server", isCorrect: false),
      const WiidgetOption(text: "Linux", isCorrect: true),
      const WiidgetOption(text: "macOS Server", isCorrect: false),
      const WiidgetOption(text: "Android", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const WiidgetOption(text: "Linux", isCorrect: true),
  ),
  WidgetQuestion(
    text: "What does GUI stand for, commonly used in modern operating systems?",
    options: [
      const WiidgetOption(text: "General User Interface", isCorrect: false),
      const WiidgetOption(text: "Graphical User Interface", isCorrect: true),
      const WiidgetOption(text: "Generated User Interface", isCorrect: false),
      const WiidgetOption(text: "Global User Interaction", isCorrect: false),
    ],
    id: 5,
    correctAnswer:
        const WiidgetOption(text: "Graphical User Interface", isCorrect: true),
  ),
  WidgetQuestion(
    text: "Which operating system is primarily used in embedded systems?",
    options: [
      const WiidgetOption(text: "Ubuntu", isCorrect: false),
      const WiidgetOption(text: "RTOS", isCorrect: true),
      const WiidgetOption(text: "Fedora", isCorrect: false),
      const WiidgetOption(text: "Windows XP", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const WiidgetOption(text: "RTOS", isCorrect: true),
  ),
  WidgetQuestion(
    text: "What is 'paging' in the context of operating systems?",
    options: [
      const WiidgetOption(
          text: "A method to download pages from the internet",
          isCorrect: false),
      const WiidgetOption(text: "A memory management scheme", isCorrect: true),
      const WiidgetOption(
          text: "A process scheduling algorithm", isCorrect: false),
      const WiidgetOption(text: "A networking protocol", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const WiidgetOption(
        text: "A memory management scheme", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "Which feature prevents unauthorized access to the computer's resources?",
    options: [
      const WiidgetOption(text: "Authentication", isCorrect: true),
      const WiidgetOption(text: "Compiling", isCorrect: false),
      const WiidgetOption(text: "Linking", isCorrect: false),
      const WiidgetOption(text: "Indexing", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const WiidgetOption(text: "Authentication", isCorrect: true),
  ),
  WidgetQuestion(
    text: "Which OS is specifically designed for Apple mobile devices?",
    options: [
      const WiidgetOption(text: "Android", isCorrect: false),
      const WiidgetOption(text: "iOS", isCorrect: true),
      const WiidgetOption(text: "Windows Mobile", isCorrect: false),
      const WiidgetOption(text: "BlackBerry OS", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const WiidgetOption(text: "iOS", isCorrect: true),
  ),
];
