import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage(topic: 'Flutter')),
                );
              },
              child: Text('Flutter Quiz'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage(topic: 'Marvel')),
                );
              },
              child: Text('Marvel Quiz'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage(topic: 'Movies')),
                );
              },
              child: Text('Movies Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  final String topic;

  QuizPage({required this.topic});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int score = 0;

  List<Question> getQuestions() {
    // Define questions based on the selected topic
    if (widget.topic == 'Flutter') {
      return [
        Question(
          'What is Flutter?',
          ['A web framework', 'A mobile development framework', 'A desktop application', 'A database'],
          1,
        ),
        Question(
          'Who developed Flutter?',
          ['Apple', 'Google', 'Microsoft', 'Facebook'],
          1,
        ),
        Question(
          'Which language is used to develop Flutter apps?',
          ['Java', 'Kotlin', 'Swift', 'Dart'],
          3,
        ),
        Question(
          'What is Hot Reload in Flutter?',
          ['A feature to quickly compile code', 'A feature to update code changes instantly', 'A feature to debug code', 'A feature to deploy apps'],
          1,
        ),
        Question(
          'What is the default alignment of widgets in Flutter?',
          ['Center', 'TopLeft', 'BottomRight', 'Stretch'],
          0,
        ),
        Question(
          'What is a StatefulWidget in Flutter?',
          ['A widget that is immutable', 'A widget that can change its state', 'A widget that is always visible', 'A widget that handles gestures'],
          1,
        ),
        Question(
          'What is a key in Flutter?',
          ['A unique identifier for a widget', 'A value to specify the position of a widget', 'A parameter to define widget appearance', 'A function to handle user input'],
          0,
        ),
        Question(
          'What is the purpose of the pubspec.yaml file in Flutter?',
          ['To specify dependencies and metadata for the project', 'To define the layout of the user interface', 'To configure platform-specific code', 'To manage package versions'],
          0,
        ),
        Question(
          'What is the purpose of the MaterialApp widget in Flutter?',
          ['To define the root of the widget tree', 'To display an image', 'To handle user input', 'To manage application settings'],
          0,
        ),
        Question(
          'What is a widget tree in Flutter?',
          ['A hierarchical structure of widgets', 'A list of available widgets', 'A layout algorithm', 'A design pattern for building user interfaces'],
          0,
        ),
      ];
    } else if (widget.topic == 'Marvel') {
      return [
        Question(
          'Who is Iron Man?',
          ['Tony Stark', 'Bruce Banner', 'Steve Rogers', 'Thor'],
          0,
        ),
        Question(
          'What is the name of Thor\'s hammer?',
          ['Stormbreaker', 'Mjolnir', 'Gungnir', 'Excalibur'],
          1,
        ),
        Question(
          'What is the real name of Spider-Man?',
          ['Peter Parker', 'Tony Stark', 'Bruce Wayne', 'Clark Kent'],
          0,
        ),
        Question(
          'Who is the primary antagonist in the Avengers movie?',
          ['Loki', 'Thanos', 'Ultron', 'Red Skull'],
          1,
        ),
        Question(
          'Who is the leader of the Guardians of the Galaxy?',
          ['Star-Lord', 'Groot', 'Rocket', 'Gamora'],
          0,
        ),
        Question(
          'Which Infinity Stone is associated with the color green?',
          ['Power Stone', 'Mind Stone', 'Time Stone', 'Soul Stone'],
          3,
        ),
        Question(
          'What is Captain America\'s shield made of?',
          ['Steel', 'Titanium', 'Vibranium', 'Adamantium'],
          2,
        ),
        Question(
          'What is the name of the planet where the Hulk was born?',
          ['Earth', 'Asgard', 'Vormir', 'Sakaar'],
          3,
        ),
        Question(
          'What is the name of the organization Nick Fury leads?',
          ['S.H.I.E.L.D.', 'HYDRA', 'AIM', 'X-Men'],
          0,
        ),
        Question(
          'Who is the strongest Avenger?',
          ['Thor', 'Captain Marvel', 'Hulk', 'Scarlet Witch'],
          1,
        ),
      ];
    } else if (widget.topic == 'Movies') {
      return [
        Question(
          'Which movie won the Academy Award for Best Picture in 2020?',
          ['Parasite', '1917', 'Joker', 'Once Upon a Time in Hollywood'],
          0,
        ),
        Question(
          'Who directed the movie "Inception"?',
          ['Christopher Nolan', 'Steven Spielberg', 'Quentin Tarantino', 'Martin Scorsese'],
          0,
        ),
        Question(
          'Which movie features the character "Tony Montana"?',
          ['Scarface', 'The Godfather', 'Goodfellas', 'Taxi Driver'],
          0,
        ),
        Question(
          'What is the highest-grossing film of all time (as of 2021)?',
          ['Avatar', 'Avengers: Endgame', 'Titanic', 'Star Wars: The Force Awakens'],
          1,
        ),
        Question(
          'Who played the role of Neo in "The Matrix" trilogy?',
          ['Tom Cruise', 'Keanu Reeves', 'Brad Pitt', 'Leonardo DiCaprio'],
          1,
        ),
        Question(
          'Which movie won the first Academy Award for Best Picture?',
          ['Wings', 'All Quiet on the Western Front', 'Sunrise: A Song of Two Humans', 'The Broadway Melody'],
          0,
        ),
        Question(
          'In which movie does the character Ellen Ripley appear?',
          ['Alien', 'Predator', 'Blade Runner', 'The Terminator'],
          0,
        ),
        Question(
          'Who directed the movie "Schindler\'s List"?',
          ['Steven Spielberg', 'Quentin Tarantino', 'Martin Scorsese', 'Francis Ford Coppola'],
          0,
        ),
        Question(
          'Which actor portrayed the character James Bond in the movie "GoldenEye"?',
          ['Pierce Brosnan', 'Daniel Craig', 'Sean Connery', 'Roger Moore'],
          0,
        ),
        Question(
          'Which movie features the character Forrest Gump?',
          ['Forrest Gump', 'Saving Private Ryan', 'The Shawshank Redemption', 'Cast Away'],
          0,
        ),
      ];
    }
    return []; // Default empty list
  }

  void checkAnswer(int selectedIndex) {
    List<Question> questions = getQuestions();
    if (selectedIndex == questions[currentQuestionIndex].correctAnswer) {
      setState(() {
        score++;
      });
    }
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Navigate to result page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            score: score,
            totalQuestions: questions.length,
            questions: questions,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Question> questions = getQuestions();
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.topic} Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1}/${questions.length}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              questions[currentQuestionIndex].question,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40.0),
            ...List.generate(
              questions[currentQuestionIndex].answers.length,
                  (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => checkAnswer(index),
                  child: Text(questions[currentQuestionIndex].answers[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final List<Question> questions;

  ResultPage({required this.score, required this.totalQuestions, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score / $totalQuestions',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the main menu
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Back to Main Menu'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Correct Answers:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(questions[index].question),
                    subtitle: Text('Answer: ${questions[index].answers[questions[index].correctAnswer]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final List<String> answers;
  final int correctAnswer;

  Question(this.question, this.answers, this.correctAnswer);
}