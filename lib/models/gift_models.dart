import 'package:digikala_clone/constans.dart';

class GidftModels {
  final String title, sender, fi1, fi2, gift, src, frosh;
  bool app = false;

  GidftModels({
    required this.title,
    required this.sender,
    required this.fi1,
    required this.fi2,
    required this.gift,
    required this.src,
    required this.frosh,
    required this.app,
  });
}

late var time = DateTime.now();

List<GidftModels> giftModel = [
  GidftModels(
    title: 'کفش کوهنوردی سارزی مدل Z.S_s.a.g.h',
    sender: 'دیجی کالا',
    fi1: '550,000',
    fi2: '259,000',
    gift: '53',

    src: '${constans.scrPic}gift/1.webp',
    frosh: '32', //چه تعداد فروش رفت
    app: true, //gift for giftlication
  ),
  GidftModels(
    title: 'سرویس چاقو 6 پارچه وینر کد 01',
    sender: 'انبار',
    fi1: '2,900,000',
    fi2: '',
    // fi2: '1,499,000',
    gift: '48',
    src: '${constans.scrPic}gift/2.webp',
    frosh: '40',
    app: true,
  ),
  GidftModels(
    title: 'شارژر دیواری کربی مدل BE-R101 55W',
    sender: '',
    gift: '58',
    fi1: '599,000',
    fi2: '249,000',
    src: '${constans.scrPic}gift/3.webp',
    frosh: '',
    app: false,
  ),
  GidftModels(
    title: 'کوله پشتی پسرانه مدل VESTAR-1100',
    sender: 'انبار',
    fi1: '685,000',
    fi2: '274,000',
    gift: '60',
    src: '${constans.scrPic}gift/4.webp',
    frosh: '34',
    app: true,
  ),
  GidftModels(
    title: 'دستگاه بخور سرد امسیگ مدل US418',
    sender: 'دیجی کالا',
    fi1: '2,499,000',
    fi2: '2,299,000',
    gift: '8',
    src: '${constans.scrPic}gift/5.webp',
    frosh: '',
    app: false,
  ),
  GidftModels(
    title: 'فشارسنج پیک سلوشن مدل help RAPID',
    sender: 'دیجی کالا',
    fi1: '1,730,000',
    fi2: '1,399,000',
    gift: '19',
    src: '${constans.scrPic}gift/6.webp',
    frosh: '60',
    app: false,
  ),
  GidftModels(
    title: 'اسپیکر بلوتوثی قابل حمل کینگ استار مدل KBS302',
    sender: 'دیجی کالا',
    fi1: '5,000,000',
    fi2: '2,099,000',
    gift: '58',
    src: '${constans.scrPic}gift/7.webp',
    frosh: '',
    app: false,
  ),
  GidftModels(
    title: 'کارواش باس مدل LIFE_STYLE',
    sender: '',
    gift: '59',
    fi1: '4,800,000',
    fi2: '1,950,000',
    src: '${constans.scrPic}gift/8.webp',
    frosh: '',
    app: false,
  ),
  GidftModels(
    title: 'ترازو دیجیتال کوپکس مدل PSC-3320',
    sender: '',
    fi1: '',
    fi2: '',
    gift: '',
    src: '${constans.scrPic}gift/9.webp',
    frosh: '',
    app: false,
  ),
];
