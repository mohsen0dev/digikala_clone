import 'package:digikala_clone/constans.dart';

class GidftSuperModels {
  final String title, sender, fi1, fi2, gift, time, src, frosh;
  bool app = false;

  GidftSuperModels({
    required this.title,
    required this.sender,
    required this.fi1,
    required this.fi2,
    required this.gift,
    required this.time,
    required this.src,
    required this.frosh,
    required this.app,
  });
}

late var date = DateTime.now();

int h = date.hour;
int m = date.minute;
int s = date.second;
List<GidftSuperModels> giftSuperModel = [
  GidftSuperModels(
    title: 'تخم مرغ تازه پروتانا بسته 20 عددی',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '79,000',
    fi2: '62,990',
    gift: '20',
    time: '$s : $m : $h ',
    src: '${constans.scrPic}gift_super/1.webp',
    frosh: '', //چه تعداد فروش رفت
    app: true, //gift for application
  ),
  GidftSuperModels(
    title: 'شیر کاکائو دومینو - 0.2 لیتر بسته 6 عددی',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '60,000',
    fi2: '48.300',
    gift: '20',
    time: '$s : $m : $h ',
    src: '${constans.scrPic}gift_super/2.webp',
    frosh: '',
    app: true,
  ),
  GidftSuperModels(
    title: 'کنسرو ماهی تن با شوید طبیعت مقدار 180 گرم',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '48,800',
    fi2: '40,900',
    gift: '16',
    time: '$s : $m : $h ',
    src: '${constans.scrPic}gift_super/3.webp',
    frosh: '',
    app: false,
  ),
  GidftSuperModels(
    title: 'برنج طارم ممتاز گلستان - 4.5 کیلوگرم',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '674,700',
    fi2: '582,500',
    gift: '14',
    time: '$s : $m : $h ',
    src: '${constans.scrPic}gift_super/4.webp',
    frosh: '',
    app: true,
  ),
  GidftSuperModels(
    title: 'ماکارونی پنه ریگاته زر ماکارون مقدار 500 گرم',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '19,800',
    fi2: '16,900',
    gift: '15',
    time: '$s : $m : $h ',
    src: '${constans.scrPic}gift_super/5.webp',
    frosh: '68',
    app: false,
  ),
  GidftSuperModels(
    title: 'چای کیسه ای ساده خانواده چای دبش بسته 100 عددی',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '89,900',
    fi2: '41,500',
    gift: '54',
    time: '',
    src: '${constans.scrPic}gift_super/6.webp',
    frosh: '',
    app: false,
  ),
  GidftSuperModels(
    title: 'همبرگر 85% مهیا پروتئین - 400 گرم',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '92,500',
    fi2: '55,900',
    gift: '40',
    time: '',
    src: '${constans.scrPic}gift_super/7.webp',
    frosh: '46',
    app: false,
  ),
  GidftSuperModels(
    title: 'پنیر تازه پاستوریزه پگاه - 450 گرم',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '42,000',
    fi2: '33,800',
    gift: '20',
    time: '',
    src: '${constans.scrPic}gift_super/8.webp',
    frosh: '68',
    app: false,
  ),
  GidftSuperModels(
    title: 'سس فرانسوی بیژن- 450 گرم',
    sender: 'ارسال سریع سوپرمارکتی',
    fi1: '39,000',
    fi2: '26,900',
    gift: '31',
    time: '',
    src: '${constans.scrPic}gift_super/9.webp',
    frosh: '',
    app: false,
  ),
];
