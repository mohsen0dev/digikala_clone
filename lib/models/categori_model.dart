class CategoriModels {
  final String title, src;
  CategoriModels({
    required this.title,
    required this.src,
  });
}

final String path = 'assets/images/categories';
List<CategoriModels> categoriList = [
  CategoriModels(
    title: 'ابزار، لوازم ساختمانی و صنعتی',
    src: '$path/abzar.png',
  ),
  CategoriModels(
    title: 'موبایل',
    src: '$path/mobail.png',
  ),
  CategoriModels(
    title: 'کالای دیجیتال',
    src: '$path/kala_digital.png',
  ),
  CategoriModels(
    title: 'مد و پوشاک',
    src: '$path/mode_poshak.png',
  ),
  CategoriModels(
    title: 'کالاهای سوپرمارکتی',
    src: '$path/kalahaye_super_marketi.png',
  ),
  CategoriModels(
    title: 'محصولات بومی و محلی',
    src: '$path/mahsolat_bomi_mahali.png',
  ),
  CategoriModels(
    title: 'خودرو و موتورسیکلت',
    src: '$path/khodro.png',
  ),
  CategoriModels(
    title: 'اسباب بازی، کودک و نوزاد',
    src: '$path/asbabbazi_kodak_nozad.png',
  ),
  CategoriModels(
    title: 'زیبایی و سلامت',
    src: '$path/zibayi_salamat.png',
  ),
  CategoriModels(
    title: 'خانه و آشپزخانه',
    src: '$path/khane_ashpazkhane.png',
  ),
  CategoriModels(
    title: 'کتاب، لوازم تحریر و هنر',
    src: '$path/ketab_lavazem_tahrir_honar.png',
  ),
  CategoriModels(
    title: 'ورزش و سفر',
    src: '$path/varzesh_safar.png',
  ),
];
