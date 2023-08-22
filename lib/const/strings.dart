import 'package:quiz_app/const/images.dart';

var appBarTitle = 'বাংলাদেশের জাতীয় প্রতীকসমূহ';
var appBarTitle2 = 'কুইজ';

var q1 = '১. বাংলাদেশের জাতীয় পতাকা কোনটি?';
var q2 = '২. বাংলাদেশের জাতীয় প্রতীক কোনটি?';
var q3 = '৩. বাংলাদেশ সরকারের সিলমোহর কোনটি?';

var qArray = [q1, q2, q3];
var ansArray = [imgBang, imgSealBang, imgGovSealBang];

List? questions = [
  {
    'question': q1,
    'answer': [
      {'image': imgBang, 'score': 1},
      {'image': imgGerman, 'score': 0},
      {'image': imgIndia, 'score': 0},
      {'image': imgJapan, 'score': 0}
    ]
  },
  {
    'question': q2,
    'answer': [
      {'image': imgSealMexi, 'score': 0},
      {'image': imgSealBang, 'score': 1},
      {'image': imgSealBela, 'score': 0},
      {'image': imgSealLiby, 'score': 0}
    ]
  },
  {
    'question': q3,
    'answer': [
      {'image': imgGovSealKeny, 'score': 0},
      {'image': imgGovSealJapa, 'score': 0},
      {'image': imgGovSealWBan, 'score': 0},
      {'image': imgGovSealBang, 'score': 1}
    ]
  },
];

var endQuiz1 = 'অভিনন্দন, তুমি সবগুলো প্রশ্নের সঠিক উত্তর দিতে পেরেছো।';
var endQuiz2 = 'অভিনন্দন, তুমি কুইজটি সম্পূর্ন করেছো।';

var mark0 = 'প্রাপ্ত নম্বরঃ ০/৩';
var mark1 = 'প্রাপ্ত নম্বরঃ ১/৩';
var mark2 = 'প্রাপ্ত নম্বরঃ ২/৩';
var mark3 = 'প্রাপ্ত নম্বরঃ ৩/৩';

var answerText = 'উত্তর: ';
