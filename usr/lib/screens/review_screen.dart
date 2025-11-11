import 'package:flutter/material.dart';
import 'package:couldai_user_app/data/questions_data.dart';
import 'package:couldai_user_app/models/question_model.dart';

class ReviewScreen extends StatelessWidget {
  final Map<int, String> userAnswers;

  const ReviewScreen({super.key, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembahasan Soal'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.white,
            ],
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: questionsData.length,
          itemBuilder: (context, index) {
            final question = questionsData[index];
            final userAnswer = userAnswers[index];
            final isCorrect = userAnswer == question.correctAnswer;

            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: isCorrect ? Colors.green : Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                isCorrect ? Icons.check : Icons.close,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                isCorrect ? 'Benar' : 'Salah',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Soal ${index + 1}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            question.category,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Pertanyaan
                    Text(
                      question.question,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Opsi Jawaban
                    ...question.options.entries.map((entry) {
                      final optionKey = entry.key;
                      final optionValue = entry.value;
                      final isUserAnswer = userAnswer == optionKey;
                      final isCorrectAnswer = question.correctAnswer == optionKey;
                      
                      Color? backgroundColor;
                      Color? borderColor;
                      
                      if (isCorrectAnswer) {
                        backgroundColor = Colors.green.shade50;
                        borderColor = Colors.green;
                      } else if (isUserAnswer && !isCorrect) {
                        backgroundColor = Colors.red.shade50;
                        borderColor = Colors.red;
                      }
                      
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          border: Border.all(
                            color: borderColor ?? Colors.grey.shade300,
                            width: borderColor != null ? 2 : 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: isCorrectAnswer
                                    ? Colors.green
                                    : (isUserAnswer && !isCorrect)
                                        ? Colors.red
                                        : Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  optionKey,
                                  style: TextStyle(
                                    color: (isCorrectAnswer || (isUserAnswer && !isCorrect))
                                        ? Colors.white
                                        : Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                optionValue,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                            if (isCorrectAnswer)
                              const Icon(Icons.check_circle, color: Colors.green, size: 20),
                            if (isUserAnswer && !isCorrect)
                              const Icon(Icons.cancel, color: Colors.red, size: 20),
                          ],
                        ),
                      );
                    }).toList(),
                    const SizedBox(height: 12),
                    
                    // Pembahasan
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.blue.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.lightbulb, color: Colors.blue.shade700, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                'Pembahasan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            question.explanation,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue.shade900,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
