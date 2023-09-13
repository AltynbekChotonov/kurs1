class Quiz {
  const Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = Quiz('Кыргызстанда 7 область барбы?', true);
const q2 = Quiz('Кыргызстандын борбору Бишкеби?', true);
const q3 = Quiz('Эң кичине материк бул - Түндүк Америкабы?', false);
const q4 = Quiz('Ошко 3000 жыл болгонбу?', true);
const q5 = Quiz('Крокадил бакка чыга алабы?', false);
const q6 = Quiz('Жер планетасы эң чоңбу?', false);
const q7 = Quiz('Flutter мобильдик тиркеме жасай алабы?', true);
const q8 = Quiz('Бал бузулабы?', false);

// gerenir ==> <>: Belgiluu bir tip beruu uchun koldonulat
const quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8];
