class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text: "What is the most basic form of automaton?",
    options: [
      const NavigationsOption(
          text: "Deterministic finite automaton", isCorrect: false),
      const NavigationsOption(text: "Context-free grammar", isCorrect: false),
      const NavigationsOption(text: "Finite state machine", isCorrect: true),
      const NavigationsOption(text: "Turing machine", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const NavigationsOption(text: "Finite state machine", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Which automaton is equivalent to a context-free grammar?",
    options: [
      const NavigationsOption(text: "Pushdown automaton", isCorrect: true),
      const NavigationsOption(
          text: "Linear bounded automaton", isCorrect: false),
      const NavigationsOption(text: "Turing machine", isCorrect: false),
      const NavigationsOption(text: "Finite state machine", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "Pushdown automaton", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Which of the following is a property of deterministic finite automata?",
    options: [
      const NavigationsOption(
          text: "Has multiple start states", isCorrect: false),
      const NavigationsOption(
          text: "Each state has exactly one transition per input symbol",
          isCorrect: true),
      const NavigationsOption(
          text: "Can use a stack to store characters", isCorrect: false),
      const NavigationsOption(
          text: "Accepts only context-free languages", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(
        text: "Each state has exactly one transition per input symbol",
        isCorrect: true),
  ),
  NavigateQuestion(
    text: "What type of languages can be recognized by a Turing machine?",
    options: [
      const NavigationsOption(text: "Regular languages", isCorrect: false),
      const NavigationsOption(text: "Context-free languages", isCorrect: false),
      const NavigationsOption(
          text: "Context-sensitive languages", isCorrect: false),
      const NavigationsOption(
          text: "Recursively enumerable languages", isCorrect: true),
    ],
    id: 3,
    correctAnswer: const NavigationsOption(
        text: "Recursively enumerable languages", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "What is the pumping lemma used for in the context of formal languages?",
    options: [
      const NavigationsOption(
          text: "To prove that a language is regular", isCorrect: false),
      const NavigationsOption(
          text: "To prove that a language is not regular", isCorrect: true),
      const NavigationsOption(
          text: "To convert finite automata into regular expressions",
          isCorrect: false),
      const NavigationsOption(
          text: "To simplify context-free grammars", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
        text: "To prove that a language is not regular", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Which of the following is NOT a type of grammar in the Chomsky hierarchy?",
    options: [
      const NavigationsOption(text: "Regular grammar", isCorrect: false),
      const NavigationsOption(text: "Context-free grammar", isCorrect: false),
      const NavigationsOption(text: "Contextual grammar", isCorrect: true),
      const NavigationsOption(text: "Recursive grammar", isCorrect: false),
    ],
    id: 5,
    correctAnswer:
        const NavigationsOption(text: "Contextual grammar", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is the purpose of a non-deterministic finite automaton?",
    options: [
      const NavigationsOption(
          text: "To process all possible inputs simultaneously",
          isCorrect: false),
      const NavigationsOption(
          text: "To decide the halting problem", isCorrect: false),
      const NavigationsOption(
          text: "To recognize languages defined by regular expressions",
          isCorrect: true),
      const NavigationsOption(
          text: "To calculate arithmetic expressions", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const NavigationsOption(
        text: "To recognize languages defined by regular expressions",
        isCorrect: true),
  ),
  NavigateQuestion(
    text: "What does a Moore machine use to produce output?",
    options: [
      const NavigationsOption(text: "The current state only", isCorrect: true),
      const NavigationsOption(text: "The input symbols only", isCorrect: false),
      const NavigationsOption(
          text: "Both the current state and input symbols", isCorrect: false),
      const NavigationsOption(
          text: "The previous state only", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(
        text: "The current state only", isCorrect: true),
  ),
  NavigateQuestion(
    text: "Which machine is known as the most powerful type of automaton?",
    options: [
      const NavigationsOption(text: "Turing machine", isCorrect: true),
      const NavigationsOption(text: "Finite state machine", isCorrect: false),
      const NavigationsOption(text: "Pushdown automaton", isCorrect: false),
      const NavigationsOption(
          text: "Linear bounded automaton", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
        const NavigationsOption(text: "Turing machine", isCorrect: true),
  ),
  NavigateQuestion(
    text: "What is the result of the union operation in regular languages?",
    options: [
      const NavigationsOption(
          text:
              "A new language that combines elements from both operand languages",
          isCorrect: true),
      const NavigationsOption(
          text: "A simplified version of the first operand language",
          isCorrect: false),
      const NavigationsOption(
          text: "The intersection of two languages", isCorrect: false),
      const NavigationsOption(
          text: "The complement of the first operand language",
          isCorrect: false),
    ],
    id: 9,
    correctAnswer: const NavigationsOption(
        text:
            "A new language that combines elements from both operand languages",
        isCorrect: true),
  ),
];
