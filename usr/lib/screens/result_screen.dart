import 'package:flutter/material.dart';
import 'package:couldai_user_app/data/questions_data.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/review_screen.dart';

class ResultScreen extends StatelessWidget {
  final Map<int, String> userAnswers;

  const ResultScreen({super.key, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;
    
    for (int i = 0; i < questionsData.length; i++) {
      if (userAnswers[i] == questionsData[i].correctAnswer) {
        correctAnswers++;
      }
    }

    final score = (correctAnswers / questionsData.length * 100).toStringAsFixed(1);
    final percentage = correctAnswers / questionsData.length;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade400,
              Colors.purple.shade300,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon Hasil
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      percentage >= 0.7 ? Icons.emoji_events : Icons.assignment_turned_in,
                      size: 80,
                      color: percentage >= 0.7 ? Colors.amber : Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  // Judul
                  Text(
                    percentage >= 0.7 ? 'Selamat!' : 'Asesmen Selesai!',
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    percentage >= 0.7 
                        ? 'Kamu mengerjakan dengan baik!'
                        : 'Terus belajar dan berlatih!',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  // Card Hasil
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          // Skor
                          Text(
                            score,
                            style: TextStyle(
                              fontSize: 72,
                              fontWeight: FontWeight.bold,
                              color: _getScoreColor(percentage),
                            ),
                          ),
                          const Text(
                            'NILAI',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              letterSpacing: 2,
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Divider(),
                          const SizedBox(height: 24),
                          
                          // Detail
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildStatItem(
                                'Benar',
                                correctAnswers.toString(),
                                Colors.green,
                                Icons.check_circle,
                              ),
                              _buildStatItem(
                                'Salah',
                                (questionsData.length - correctAnswers).toString(),
                                Colors.red,
                                Icons.cancel,
                              ),
                              _buildStatItem(
                                'Total',
                                questionsData.length.toString(),
                                Colors.blue,
                                Icons.assignment,
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          
                          // Predikat
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: _getScoreColor(percentage).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: _getScoreColor(percentage),
                                width: 2,
                              ),
                            ),
                            child: Text(
                              _getPredicate(percentage),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: _getScoreColor(percentage),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  // Tombol Aksi
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReviewScreen(userAnswers: userAnswers),
                              ),
                            );
                          },
                          icon: const Icon(Icons.rate_review),
                          label: const Text('Lihat Pembahasan'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          icon: const Icon(Icons.home),
                          label: const Text('Kembali ke Beranda'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white, width: 2),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value, Color color, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Color _getScoreColor(double percentage) {
    if (percentage >= 0.85) return Colors.green;
    if (percentage >= 0.7) return Colors.blue;
    if (percentage >= 0.6) return Colors.orange;
    return Colors.red;
  }

  String _getPredicate(double percentage) {
    if (percentage >= 0.85) return 'Sangat Baik';
    if (percentage >= 0.7) return 'Baik';
    if (percentage >= 0.6) return 'Cukup';
    return 'Perlu Bimbingan';
  }
}
