import 'package:couldai_user_app/models/question_model.dart';

final List<Question> questionsData = [
  // Operasi Hitung Bilangan Bulat (5 soal)
  Question(
    question: '1. Hasil dari -15 + 23 adalah ...',
    options: {
      'A': '8',
      'B': '-8',
      'C': '38',
      'D': '-38',
    },
    correctAnswer: 'A',
    explanation: 'Untuk menghitung -15 + 23, kita dapat menghitung 23 - 15 = 8. Karena bilangan positif (23) lebih besar dari bilangan negatif (-15), hasilnya positif.',
    category: 'Operasi Hitung',
  ),
  Question(
    question: '2. Suhu di ruang pendingin adalah -8°C. Jika suhu naik 12°C, maka suhu sekarang adalah ...',
    options: {
      'A': '20°C',
      'B': '4°C',
      'C': '-4°C',
      'D': '-20°C',
    },
    correctAnswer: 'B',
    explanation: 'Suhu awal -8°C, naik 12°C berarti -8 + 12 = 4°C. Ini seperti bergerak ke kanan pada garis bilangan.',
    category: 'Operasi Hitung',
  ),
  Question(
    question: '3. Hasil dari 45 - 67 adalah ...',
    options: {
      'A': '22',
      'B': '-22',
      'C': '112',
      'D': '-112',
    },
    correctAnswer: 'B',
    explanation: 'Karena 45 lebih kecil dari 67, maka hasilnya negatif. 67 - 45 = 22, sehingga 45 - 67 = -22.',
    category: 'Operasi Hitung',
  ),
  Question(
    question: '4. (-6) × 8 = ...',
    options: {
      'A': '48',
      'B': '-48',
      'C': '14',
      'D': '-14',
    },
    correctAnswer: 'B',
    explanation: 'Perkalian bilangan negatif dengan bilangan positif menghasilkan bilangan negatif. 6 × 8 = 48, maka (-6) × 8 = -48.',
    category: 'Operasi Hitung',
  ),
  Question(
    question: '5. 56 : (-7) = ...',
    options: {
      'A': '8',
      'B': '-8',
      'C': '49',
      'D': '-49',
    },
    correctAnswer: 'B',
    explanation: 'Pembagian bilangan positif dengan bilangan negatif menghasilkan bilangan negatif. 56 : 7 = 8, maka 56 : (-7) = -8.',
    category: 'Operasi Hitung',
  ),

  // Faktor dan Kelipatan (5 soal)
  Question(
    question: '6. Faktor dari 24 adalah ...',
    options: {
      'A': '1, 2, 3, 4, 6, 8, 12, 24',
      'B': '24, 48, 72, 96',
      'C': '1, 2, 4, 8',
      'D': '2, 4, 6, 8',
    },
    correctAnswer: 'A',
    explanation: 'Faktor adalah bilangan yang dapat membagi habis suatu bilangan. Faktor dari 24 adalah semua bilangan yang dapat membagi 24 tanpa sisa: 1, 2, 3, 4, 6, 8, 12, dan 24.',
    category: 'Faktor & Kelipatan',
  ),
  Question(
    question: '7. Kelipatan 6 yang kurang dari 40 adalah ...',
    options: {
      'A': '6, 12, 18, 24, 30, 36',
      'B': '6, 12, 18, 24, 30, 36, 42',
      'C': '1, 2, 3, 6',
      'D': '6, 18, 30',
    },
    correctAnswer: 'A',
    explanation: 'Kelipatan 6 adalah hasil kali 6 dengan bilangan asli. Kelipatan 6 yang kurang dari 40: 6×1=6, 6×2=12, 6×3=18, 6×4=24, 6×5=30, 6×6=36. (6×7=42 sudah lebih dari 40)',
    category: 'Faktor & Kelipatan',
  ),
  Question(
    question: '8. Faktor prima dari 30 adalah ...',
    options: {
      'A': '2, 3, 5',
      'B': '1, 2, 3, 5',
      'C': '2, 3, 5, 15',
      'D': '1, 2, 3, 5, 6, 10, 15, 30',
    },
    correctAnswer: 'A',
    explanation: 'Faktor prima adalah faktor yang merupakan bilangan prima. Bilangan prima dari faktor 30 (1, 2, 3, 5, 6, 10, 15, 30) adalah 2, 3, dan 5. (1 bukan bilangan prima)',
    category: 'Faktor & Kelipatan',
  ),
  Question(
    question: '9. Kelipatan persekutuan dari 4 dan 6 yang pertama adalah ...',
    options: {
      'A': '2',
      'B': '12',
      'C': '24',
      'D': '4',
    },
    correctAnswer: 'B',
    explanation: 'Kelipatan 4: 4, 8, 12, 16, 20, 24... Kelipatan 6: 6, 12, 18, 24, 30... Kelipatan persekutuan yang pertama (terkecil) adalah 12.',
    category: 'Faktor & Kelipatan',
  ),
  Question(
    question: '10. Jika 36 = 2² × 3ⁿ, maka nilai n adalah ...',
    options: {
      'A': '1',
      'B': '2',
      'C': '3',
      'D': '4',
    },
    correctAnswer: 'B',
    explanation: 'Faktorisasi prima dari 36 = 2 × 2 × 3 × 3 = 2² × 3². Jadi nilai n = 2.',
    category: 'Faktor & Kelipatan',
  ),

  // FPB dan KPK (5 soal)
  Question(
    question: '11. FPB dari 12 dan 18 adalah ...',
    options: {
      'A': '2',
      'B': '3',
      'C': '6',
      'D': '36',
    },
    correctAnswer: 'C',
    explanation: 'Faktor 12: 1, 2, 3, 4, 6, 12. Faktor 18: 1, 2, 3, 6, 9, 18. Faktor persekutuan: 1, 2, 3, 6. FPB (Faktor Persekutuan terBesar) adalah 6.',
    category: 'FPB & KPK',
  ),
  Question(
    question: '12. KPK dari 8 dan 12 adalah ...',
    options: {
      'A': '4',
      'B': '12',
      'C': '24',
      'D': '96',
    },
    correctAnswer: 'C',
    explanation: 'Kelipatan 8: 8, 16, 24, 32, 40... Kelipatan 12: 12, 24, 36, 48... Kelipatan persekutuan pertama (KPK) adalah 24.',
    category: 'FPB & KPK',
  ),
  Question(
    question: '13. Ibu membeli 24 buah jeruk dan 36 buah apel. Buah-buahan tersebut akan dibagikan ke dalam kantong dengan jumlah yang sama. Berapa jumlah kantong terbanyak yang dapat dibuat?',
    options: {
      'A': '6 kantong',
      'B': '12 kantong',
      'C': '18 kantong',
      'D': '24 kantong',
    },
    correctAnswer: 'B',
    explanation: 'Untuk membagi sama rata, kita mencari FPB dari 24 dan 36. FPB(24, 36) = 12. Jadi jumlah kantong terbanyak adalah 12 kantong.',
    category: 'FPB & KPK',
  ),
  Question(
    question: '14. Lampu A menyala setiap 6 detik, lampu B menyala setiap 8 detik. Jika kedua lampu menyala bersamaan pada pukul 10.00, pukul berapa kedua lampu akan menyala bersamaan lagi?',
    options: {
      'A': '10.00.14',
      'B': '10.00.24',
      'C': '10.00.48',
      'D': '10.01.00',
    },
    correctAnswer: 'B',
    explanation: 'Untuk mencari kapan menyala bersamaan, kita cari KPK dari 6 dan 8. KPK(6, 8) = 24 detik. Jadi mereka menyala bersamaan lagi 24 detik setelah pukul 10.00, yaitu pukul 10.00.24.',
    category: 'FPB & KPK',
  ),
  Question(
    question: '15. FPB dari 45, 60, dan 75 adalah ...',
    options: {
      'A': '5',
      'B': '10',
      'C': '15',
      'D': '30',
    },
    correctAnswer: 'C',
    explanation: 'Faktorisasi: 45 = 3² × 5, 60 = 2² × 3 × 5, 75 = 3 × 5². FPB adalah perkalian faktor prima dengan pangkat terkecil: 3¹ × 5¹ = 15.',
    category: 'FPB & KPK',
  ),

  // Pecahan (5 soal)
  Question(
    question: '16. Hasil dari 2/5 + 1/5 adalah ...',
    options: {
      'A': '3/10',
      'B': '3/5',
      'C': '1/5',
      'D': '2/5',
    },
    correctAnswer: 'B',
    explanation: 'Karena penyebutnya sama, kita tinggal menjumlahkan pembilangnya: 2/5 + 1/5 = (2+1)/5 = 3/5.',
    category: 'Pecahan',
  ),
  Question(
    question: '17. Bentuk paling sederhana dari 12/18 adalah ...',
    options: {
      'A': '2/3',
      'B': '3/4',
      'C': '4/6',
      'D': '6/9',
    },
    correctAnswer: 'A',
    explanation: 'FPB dari 12 dan 18 adalah 6. Maka 12/18 = (12÷6)/(18÷6) = 2/3.',
    category: 'Pecahan',
  ),
  Question(
    question: '18. 3/4 - 1/2 = ...',
    options: {
      'A': '1/4',
      'B': '1/2',
      'C': '2/4',
      'D': '2/2',
    },
    correctAnswer: 'A',
    explanation: 'Samakan penyebut: 3/4 - 1/2 = 3/4 - 2/4 = (3-2)/4 = 1/4.',
    category: 'Pecahan',
  ),
  Question(
    question: '19. Ibu membeli 2 1/2 kg gula. Kemudian membeli lagi 1 3/4 kg. Berapa kg total gula yang dibeli ibu?',
    options: {
      'A': '3 1/4 kg',
      'B': '4 kg',
      'C': '4 1/4 kg',
      'D': '4 1/2 kg',
    },
    correctAnswer: 'C',
    explanation: '2 1/2 + 1 3/4 = (2 + 1) + (1/2 + 3/4) = 3 + (2/4 + 3/4) = 3 + 5/4 = 3 + 1 1/4 = 4 1/4 kg.',
    category: 'Pecahan',
  ),
  Question(
    question: '20. Urutkan pecahan berikut dari yang terkecil: 2/3, 3/4, 1/2',
    options: {
      'A': '1/2, 2/3, 3/4',
      'B': '2/3, 3/4, 1/2',
      'C': '3/4, 2/3, 1/2',
      'D': '1/2, 3/4, 2/3',
    },
    correctAnswer: 'A',
    explanation: 'Samakan penyebut ke 12: 2/3 = 8/12, 3/4 = 9/12, 1/2 = 6/12. Urutan dari terkecil: 6/12, 8/12, 9/12 atau 1/2, 2/3, 3/4.',
    category: 'Pecahan',
  ),

  // Pola Bilangan (5 soal)
  Question(
    question: '21. Tentukan bilangan selanjutnya dari pola: 2, 4, 6, 8, ...',
    options: {
      'A': '9',
      'B': '10',
      'C': '11',
      'D': '12',
    },
    correctAnswer: 'B',
    explanation: 'Pola bilangan genap berurutan dengan selisih 2. Maka bilangan selanjutnya adalah 8 + 2 = 10.',
    category: 'Pola Bilangan',
  ),
  Question(
    question: '22. Pola bilangan: 1, 4, 9, 16, 25, ... Bilangan selanjutnya adalah ...',
    options: {
      'A': '30',
      'B': '32',
      'C': '35',
      'D': '36',
    },
    correctAnswer: 'D',
    explanation: 'Ini adalah pola bilangan kuadrat: 1²=1, 2²=4, 3²=9, 4²=16, 5²=25, maka selanjutnya 6²=36.',
    category: 'Pola Bilangan',
  ),
  Question(
    question: '23. Tentukan pola berikut: 3, 6, 9, 12, 15, ... Pola ini adalah ...',
    options: {
      'A': 'Kelipatan 2',
      'B': 'Kelipatan 3',
      'C': 'Bilangan genap',
      'D': 'Bilangan prima',
    },
    correctAnswer: 'B',
    explanation: 'Pola ini adalah kelipatan 3: 3×1=3, 3×2=6, 3×3=9, 3×4=12, 3×5=15, dan seterusnya.',
    category: 'Pola Bilangan',
  ),
  Question(
    question: '24. Lengkapi pola: 50, 45, 40, 35, ..., 25',
    options: {
      'A': '30',
      'B': '32',
      'C': '28',
      'D': '33',
    },
    correctAnswer: 'A',
    explanation: 'Pola berkurang 5 setiap langkah: 50, 45, 40, 35, 30, 25. Jadi yang kosong adalah 30.',
    category: 'Pola Bilangan',
  ),
  Question(
    question: '25. Andi menyusun kelereng: baris pertama 1 kelereng, baris kedua 3 kelereng, baris ketiga 5 kelereng, baris keempat 7 kelereng. Berapa kelereng di baris kelima?',
    options: {
      'A': '8',
      'B': '9',
      'C': '10',
      'D': '11',
    },
    correctAnswer: 'B',
    explanation: 'Pola bilangan ganjil: 1, 3, 5, 7, ... Selisihnya selalu 2. Maka baris kelima: 7 + 2 = 9 kelereng.',
    category: 'Pola Bilangan',
  ),
];
