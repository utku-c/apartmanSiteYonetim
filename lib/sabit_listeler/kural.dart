import '../models/duyuru_model.dart';

List<String> kuralListe = [
  "Olabildiğince komşuları rahatsız edebilecek gürültülere sebebiyet vermekten kaçının. Özellikle de yasal olarak korunan gece saatleri (22.00 – 06.00) ve dinlenme saatleri (iş günleri 06.00 – 07.00 ve 20.00 – 22.00 ve genel olarak Pazar günleri ve tatil günleri) esnasında. Öğlen dinlenme zamanı 13.00 – 15.00 saatleri arası olarak belirlenmiştir.",
  "Dairelerde müzik çalma süresi günde en fazla bir saat olup 20.00 – 09.00 ve 13.00 – 15.00 arasında yapılmamalıdır. Bu kuralların dikkate alınması ve gerektiğinde komşulardan izin istemenin gerekliliği bilinmelidir. Davul elektronik gitar ve gayda vb. yüksek sesli çalgılar evde çalınabilecek türde enstrümanlardan olmayıp diğer apartman sakinlerinin haklarına saygı göstermek adına apartmanlarda çalınmasına izin verilmemektedir.",
  "Yüksek sesle müzik ve televizyon izlenmemeli ve komşuları rahatsız edecek derecede gürültü yapılmamalıdır. (Türk Ceza Kanunu Madde 546)",
  "Blok çevresine, asansörlere, merpen sahanlıklarına ve diğer ortak alanlara çöp atılmamalıdır. (Türk Ceza Kanunu Madde 558)",
  "Balkon ve pencerelerden temizlik günü harici silkeleme işlemi yapılmamalıdır. (Türk Medeni Kanunu madde 737)",
  "Apartman kapsamında kullanılan ortak alanlara özel eşya bırakılmamalıdır. (Türk Medeni Kanunu Madde 737)",
  "Daire içindeki tadilatların çok erken ve çok geç saatlerde, hafta sonu tatillerinde ve resmi tatillerde yapılmamalıdır. (Türk Medeni Kanunu 737)",
  "Daire içinde binanın yapısını riske edecek derecede taşıyıcı duvarın kırılmamalıdır. (Kat Mülkiyeti Kanunu Madde 19/2)",
  "Daİre balkonlarının orijinal rengin haricinde bina bütünlüğünü bozacak renge boyanmamalıdır. (Kat Mülkiyeti Kanunu Madde 19/2)",
  "Bina dışına çamaşırlık ve buna benzer aparatların asılmamalıdır. (Türk Ceza Kanunu Madde 559)",
  "Her türlü çöp (kül, şişe, teneke kutu, mutfak çöpü vs.) sadece çöp bidonlarına dökülmelidir. Balkondan aşağı atılmamalıdır. Aynı şekilde yemek artıkları gibi maddeler, hayvan beslemek için camdan atılmamalı, belirlenen yerlere konulmalıdır.",
  "Apartman dış kapısı güvenlik gereği kapalı tutulmalıdır. Yabancı kişilerin binaya girmesi konusunda tüm sakinler bilinçli davranmalı, tanımadığı kimseler için kapıyı açmamalıdır.",
  "Apartman daire kapılarının önlerine ayakkabı, ayakkabılık, terlik gibi özel eşyaların bırakılmaması gerekmektedir. Temizlik sırasında bina görevlisinin yaşayacağı zorluk düşünülmeli, kapı önleri boş bırakılmalıdır.",
  "Asansör ve ortak alanlarda sigara içilmemeli, kişisel eşyalar bırakılmamalıdır.",
  "Ortak alanların temizliği konusunda tüm sakinler titiz davranmalı, herhangi bir kirliliğe sebebiyet vermişse görevli bilgilendirilmeli, temizlik aşamasında yardım edilmelidir.",
  "Bina sakinleri bilgi afiş panosunu düzenli olarak takip etmeli, aidat ödemeleri, faturalar ve gerekli bilgilendirmelerden düzenli olarak haberdar olmalıdır.",
  "Apartmanda uyulması gereken kurallar dikkate alınmadığında ve bunun sonucunda doğacak tüm hasarlardan, ihbar zorunluluğunda doğan tüm zararlardan apartman sakinlerinin sorumlu olacağı unutulmamalıdır. Güvenli, huzurlu, temiz bir ortam için toplu yaşam kuralları, apartman kuralları veya diğer bir tabirle apartmanda yaşama kuralları tüm apartman sakinlerinin sorumluluğundadır ve herkes buna uymak zorundadır.",
];

List<DuyuruModel> demoDuyuruListe = [
  DuyuruModel(
    id: 1,
    duyuruBaslik: "Temixlikle İlgili",
    duyuruAciklama:
        "Dİkkat Önemıhsuıfh sefspeDİkkat Önemli1 amdkıfh sefspefksefsefsfsf Önemli1 amdk lakmd dajwndu pwaldğ hakkında",
    duyuruTarihi: DateTime.now(),
  ),
  DuyuruModel(
    id: 2,
    duyuruBaslik: "Güvenlikle İlgili",
    duyuruAciklama: "Dİkkat k lakmd s k lakmd ajwndu pwaldğ hakkındadesufıhs",
    duyuruTarihi: DateTime.now(),
  ),
  DuyuruModel(
    id: 3,
    duyuruBaslik: "Apartmanla İlgili Genel Toplantı",
    duyuruAciklama:
        "Dİkkat k lakmd dajwk lakmd dajwndu pwaldğ hakkındadesufıhs",
    duyuruTarihi: DateTime.now(),
  ),
  DuyuruModel(
    id: 4,
    duyuruBaslik: "Önemli3",
    duyuruAciklama: "Dİkkat",
    duyuruTarihi: DateTime.now(),
  ),
  DuyuruModel(
    id: 5,
    duyuruBaslik: "Önemli5",
    duyuruAciklama: "Dİkkat5",
    duyuruTarihi: DateTime.now(),
  ),
];
