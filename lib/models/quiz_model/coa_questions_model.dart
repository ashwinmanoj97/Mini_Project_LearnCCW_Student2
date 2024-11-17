class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text:
        "What is the function of the ALU (Arithmetic Logic Unit) in a computer?",
    options: [
      const LayOutOption(
          text: "It manages files and directories", isCorrect: false),
      const LayOutOption(
          text: "It performs arithmetic and logical operations",
          isCorrect: true),
      const LayOutOption(
          text: "It controls peripheral devices", isCorrect: false),
      const LayOutOption(text: "It stores data", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const LayOutOption(
        text: "It performs arithmetic and logical operations", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Which of the following is a component of the CPU?",
    options: [
      const LayOutOption(text: "Video card", isCorrect: false),
      const LayOutOption(text: "Control Unit", isCorrect: true),
      const LayOutOption(text: "Solid State Drive", isCorrect: false),
      const LayOutOption(text: "External Memory", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Control Unit", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is cache memory?",
    options: [
      const LayOutOption(
          text: "A form of non-volatile storage", isCorrect: false),
      const LayOutOption(
          text: "A high-speed storage mechanism", isCorrect: true),
      const LayOutOption(
          text: "External storage used for backups", isCorrect: false),
      const LayOutOption(
          text: "Cloud storage provided by the internet", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(
        text: "A high-speed storage mechanism", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What does the term 'pipelining' refer to in computer architecture?",
    options: [
      const LayOutOption(
          text: "A technique to increase the CPU cooling", isCorrect: false),
      const LayOutOption(
          text: "A method to reduce the power consumption of the CPU",
          isCorrect: false),
      const LayOutOption(
          text:
              "A process to enhance CPU performance by overlapping the execution of instructions",
          isCorrect: true),
      const LayOutOption(
          text: "The process of installing main CPU pipelines",
          isCorrect: false),
    ],
    id: 3,
    correctAnswer: const LayOutOption(
        text:
            "A process to enhance CPU performance by overlapping the execution of instructions",
        isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is the main function of the motherboard?",
    options: [
      const LayOutOption(text: "It processes video output", isCorrect: false),
      const LayOutOption(
          text: "It stores the operating system", isCorrect: false),
      const LayOutOption(
          text: "It connects all the parts of the computer together",
          isCorrect: true),
      const LayOutOption(
          text: "It supplies power to the computer", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const LayOutOption(
        text: "It connects all the parts of the computer together",
        isCorrect: true),
  ),
  LayOutQuestion(
    text: "What is RISC architecture known for?",
    options: [
      const LayOutOption(
          text: "Reduced instruction set computing", isCorrect: true),
      const LayOutOption(
          text: "Random integrated system computing", isCorrect: false),
      const LayOutOption(
          text: "Rapid installation of software components", isCorrect: false),
      const LayOutOption(
          text: "Robust internal security controls", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(
        text: "Reduced instruction set computing", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What role does the BIOS play in a computer?",
    options: [
      const LayOutOption(
          text: "It is primarily used for typing documents", isCorrect: false),
      const LayOutOption(
          text: "It performs the POST and loads the operating system into RAM",
          isCorrect: true),
      const LayOutOption(
          text: "It is used for creating graphics", isCorrect: false),
      const LayOutOption(
          text: "It monitors the network activities", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const LayOutOption(
        text: "It performs the POST and loads the operating system into RAM",
        isCorrect: true),
  ),
  LayOutQuestion(
    text: "Which type of memory is volatile?",
    options: [
      const LayOutOption(text: "ROM", isCorrect: false),
      const LayOutOption(text: "Hard disk", isCorrect: false),
      const LayOutOption(text: "RAM", isCorrect: true),
      const LayOutOption(text: "SSD", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "RAM", isCorrect: true),
  ),
  LayOutQuestion(
    text: "In computer architecture, what is the 'bus'?",
    options: [
      const LayOutOption(
          text: "A component that supplies power", isCorrect: false),
      const LayOutOption(
          text: "A system that manages software", isCorrect: false),
      const LayOutOption(
          text: "A set of physical connections like cables and wires",
          isCorrect: true),
      const LayOutOption(text: "A type of software", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const LayOutOption(
        text: "A set of physical connections like cables and wires",
        isCorrect: true),
  ),
  LayOutQuestion(
    text: "Which of the following best describes SIMD?",
    options: [
      const LayOutOption(text: "Single Input Multiple Data", isCorrect: false),
      const LayOutOption(
          text: "Single Instruction Multiple Data", isCorrect: true),
      const LayOutOption(
          text: "Single Instruction Multiple Devices", isCorrect: false),
      const LayOutOption(
          text: "Simultaneous Integrated Multiple Devices", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const LayOutOption(
        text: "Single Instruction Multiple Data", isCorrect: true),
  ),
];
