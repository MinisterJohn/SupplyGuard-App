import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 2, 76, 136), // Set the background color to blue
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to SupplyGuard\nHealthcare 4.0 App!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Set the button color to white
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50), // Make the button a long white rectangle
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizPage(),
                    ),
                  );
                },
                child: const Text('Take Quiz', style: TextStyle(color: Color.fromARGB(255, 3, 70, 124))), // Set the text color to blue
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentIndex = 0;
  List<Question> questions = [
    Question(
      question: 'What does CIA stand for in cybersecurity?',
      options: [
        '1. Central Intelligence Agency',
        '2. Confidentiality, Integrity, Availability',
        '3. Cybersecurity Investigation Agency',
        '4. Computer Industry Association',
      ],
      correctAnswer: '2. Confidentiality, Integrity, Availability',
    ),
    Question(
      question: 'Which of the following is not a common type of cyber attack?',
      options: [
        '1. Phishing',
        '2. DDoS (Distributed Denial of Service)',
        '3. Malware',
        '4. Encryption',
      ],
      correctAnswer: '4. Encryption',
    ),
    Question(
      question: 'What is the primary purpose of a firewall in cybersecurity?',
      options: [
        '1. Prevent unauthorized access to or from a private network',
        '2. Encrypt all data transmissions',
        '3. Speed up internet connections',
        '4. Block all incoming emails',
      ],
      correctAnswer: '1. Prevent unauthorized access to or from a private network',
    ),
    Question(
      question: 'What does SQL stand for in database management?',
      options: [
        '1. Secure Query Language',
        '2. Simple Query Language',
        '3. Structured Query Language',
        '4. Systematic Query Language',
      ],
      correctAnswer: '3. Structured Query Language',
    ),
    Question(
      question: 'What is the term for tricking individuals into providing sensitive information?',
      options: [
        '1. Spoofing',
        '2. Phishing',
        '3. Hacking',
        '4. Whaling',
      ],
      correctAnswer: '2. Phishing',
    ),
    Question(
      question: 'Which of the following is not a common authentication factor?',
      options: [
        '1. Something you know',
        '2. Something you have',
        '3. Something you are',
        '4. Something you share',
      ],
      correctAnswer: '4. Something you share',
    ),
    Question(
      question: 'What does HTTPS stand for?',
      options: [
        '1. HyperText Transfer Protocol Secure',
        '2. HyperText Transfer Protocol Standard',
        '3. HyperText Transport Protocol Secure',
        '4. HyperText Transport Protocol Standard',
      ],
      correctAnswer: '1. HyperText Transfer Protocol Secure',
    ),
    Question(
      question: 'What is the purpose of a VPN in cybersecurity?',
      options: [
        '1. Create a secure connection over the internet',
        '2. Accelerate website loading speed',
        '3. Block malicious websites',
        '4. Encrypt emails',
      ],
      correctAnswer: '1. Create a secure connection over the internet',
    ),
    Question(
      question: 'What is the first step in incident response?',
      options: [
        '1. Preparation',
        '2. Identification',
        '3. Containment',
        '4. Eradication',
      ],
      correctAnswer: '2. Identification',
    ),
    Question(
      question: 'What is the purpose of penetration testing?',
      options: [
        '1. Identify vulnerabilities in a system',
        '2. Encrypt sensitive data',
        '3. Create backups of data',
        '4. Monitor network traffic',
      ],
      correctAnswer: '1. Identify vulnerabilities in a system',
    ),

    Question(
      question: 'What is the purpose of two-factor authentication (2FA)?',
      options: [
        '1. To require two different passwords for login',
        '2. To provide an additional layer of security beyond a password',
        '3. To authenticate users using biometric data',
        '4. To encrypt all data transmissions',
      ],
      correctAnswer: '2. To provide an additional layer of security beyond a password',
    ),
    Question(
      question: 'What is the first step in responding to a cybersecurity incident?',
      options: [
        '1. Contain the incident',
        '2. Investigate the incident',
        '3. Notify the appropriate stakeholders',
        '4. Implement security patches',
      ],
      correctAnswer: '1. Contain the incident',
    ),
    Question(
      question: 'What is the purpose of penetration testing?',
      options: [
        '1. To simulate an attack on a system to identify vulnerabilities',
        '2. To monitor network traffic for suspicious activity',
        '3. To encrypt sensitive data',
        '4. To update software and firmware regularly',
      ],
      correctAnswer: '1. To simulate an attack on a system to identify vulnerabilities',
    ),
    Question(
      question: 'What does SSL/TLS stand for?',
      options: [
        '1. Secure Sockets Layer/Transport Layer Security',
        '2. Secure System Login/Token-based Logon Service',
        '3. Simple Secure Login/Tokenized Link Service',
        '4. Secure Storage Layer/Trusted Link System',
      ],
      correctAnswer: '1. Secure Sockets Layer/Transport Layer Security',
    ),
    Question(
      question: 'What is the purpose of data encryption?',
      options: [
        '1. To compress data for efficient storage',
        '2. To obfuscate data to prevent unauthorized access',
        '3. To speed up data transmission over the network',
        '4. To store data in multiple locations for redundancy',
      ],
      correctAnswer: '2. To obfuscate data to prevent unauthorized access',
    ),
    Question(
      question: 'What is a common social engineering technique?',
      options: [
        '1. Phishing',
        '2. Firewall configuration',
        '3. Data encryption',
        '4. Two-factor authentication',
      ],
      correctAnswer: '1. Phishing',
    ),
    Question(
      question: 'What is the primary goal of a DDoS attack?',
      options: [
        '1. To steal sensitive information',
        '2. To encrypt data on the target system',
        '3. To overwhelm a system with a flood of traffic',
        '4. To gain unauthorized access to a network',
      ],
      correctAnswer: '3. To overwhelm a system with a flood of traffic',
    ),
    Question(
      question: 'What does IoT stand for?',
      options: [
        '1. Internet of Things',
        '2. Input/Output Technology',
        '3. Internal Operations Toolkit',
        '4. Internet Onboard Technology',
      ],
      correctAnswer: '1. Internet of Things',
    ),
    Question(
      question: 'What is the purpose of a VPN (Virtual Private Network)?',
      options: [
        '1. To provide a secure connection over a public network',
        '2. To host websites and web applications',
        '3. To authenticate users using biometric data',
        '4. To monitor network traffic for suspicious activity',
      ],
      correctAnswer: '1. To provide a secure connection over a public network',
    ),
    Question(
      question: 'What is the primary purpose of access control in cybersecurity?',
      options: [
        '1. To regulate physical access to a building',
        '2. To control access to computer systems and data',
        '3. To encrypt all data transmissions',
        '4. To prevent social engineering attacks',
      ],
      correctAnswer: '2. To control access to computer systems and data',
    ),

  ];

  Map<int, String?> selectedAnswers = {};

  void _nextQuestion() {
    setState(() {
      if (_currentIndex < questions.length - 1) {
        _currentIndex++;
      } else {
        // Quiz completed, show result
        int score = calculateScore();
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Quiz Result'),
            content: Text('Your score: $score / ${questions.length * 5}'), // Total marks for all questions
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      }
    });
  }

  int calculateScore() {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == questions[i].correctAnswer.toString()) {
        score += 5; // Each correct answer carries 5 marks
      }
    }
    print(score);
    return score;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question ${_currentIndex + 1}: ${questions[_currentIndex].question}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  for (int j = 0; j < questions[_currentIndex].options.length; j++)
                    RadioListTile(
                      title: Text(questions[_currentIndex].options[j]),
                      value: questions[_currentIndex].options[j], // Use the option itself as the value
                      groupValue: selectedAnswers[_currentIndex],
                      onChanged: (value) {
                        print(value);
                        print(selectedAnswers);
                        setState(() {
                          selectedAnswers[_currentIndex] = value.toString();
                        });
                        _nextQuestion(); // Move to next question after selecting an answer
                      },
                    ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}