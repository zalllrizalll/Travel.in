class PlaceDestination {
  String name;
  String description;
  String image;
  String location;
  List<String> imageAsset;
  List<String> foodImage;
  List<String> foodName;

  PlaceDestination(
      {required this.name,
      required this.description,
      required this.image,
      required this.location,
      required this.imageAsset,
      required this.foodImage,
      required this.foodName
    });
}

var destinationPlaceList = [
  PlaceDestination(
      name: 'Venice',
      description:
          'Venice adalah kota unik yang terletak di timur laut Italia, terkenal sebagai "kota terapung" karena dibangun di atas 118 pulau kecil yang dipisahkan oleh kanal-kanal dan dihubungkan dengan lebih dari 400 jembatan. Kota ini terletak di Laguna Venesia, yang terbentang di sepanjang pantai Laut Adriatik.',
      image: 'images/venice.jpg',
      location: 'Veneto Region, Italy',
      imageAsset: [
        'https://img.freepik.com/free-photo/high-angle-shot-beautiful-canal-venice-with-gondolas-two-buildings_181624-7465.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/photo-canal-city_1163-159.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/canal-with-gondolas-venice-italy-architecture-landmarks-venice-venice-postcard-with-venice-gondolas_231208-7710.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.qNMzEtQK1m7xss8YmmqEIwHaHa?w=182&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.BFKgpHTMPRsHzTBNx-3n-QHaEv?w=264&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.rEZq0-K7j8WdmAwYl9FEIAHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Sarde in Saor',
        'Risotto al Nero di Seppia',
        'Cicchetti'
      ]
    ),
  PlaceDestination(
      name: 'Mount Fuji',
      description:
          'Gunung Fuji, atau Mount Fuji, adalah gunung berapi tertinggi di Jepang dengan ketinggian 3.776 meter. Terletak di Pulau Honshu, gunung ini membentang di perbatasan antara Prefektur Shizuoka dan Yamanashi, sekitar 100 kilometer barat daya Tokyo. Gunung Fuji merupakan bagian dari Taman Nasional Fuji-Hakone-Izu, salah satu kawasan wisata paling terkenal di Jepang.',
      image: 'images/mount_fuji.avif',
      location: 'Central Honshu, Japan',
      imageAsset: [
        'https://img.freepik.com/free-photo/cherry-blossoms-spring-chureito-pagoda-fuji-mountain-sunset-japan_335224-215.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/cherry-blossoms-spring-chureito-pagoda-fuji-mountain-japan_335224-177.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/fuji-mountain-cherry-blossoms-spring-japan_335224-181.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.W1LB8JqPeTd81FJ40GzHOQHaHa?w=204&h=204&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.9KMhLJOccuWKjY05x-k8SQHaE8?w=250&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.xPtH6V97f2BKhxjG4vcJXQAAAA?w=225&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Houtou Noodles',
        'Yoshida Udon',
        'Black Curry'
      ]
    ),
  PlaceDestination(
      name: 'Great Wall',
      description:
          'Tembok Besar Tiongkok, atau lebih dikenal sebagai Great Wall of China, adalah struktur pertahanan monumental yang dibangun oleh berbagai dinasti Tiongkok selama ribuan tahun. Tembok ini dirancang untuk melindungi wilayah Tiongkok dari serangan musuh, terutama dari suku-suku nomaden di utara seperti bangsa Xiongnu.',
      image: 'images/great_wall.avif',
      location: 'Huairou District, China',
      imageAsset: [
        'https://img.freepik.com/free-photo/3d-rendering-chinese-great-wall_23-2151306853.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/3d-rendering-chinese-great-wall_23-2151306935.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/3d-rendering-chinese-great-wall_23-2151306786.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.nKlwfsPtALT1loF_yMXr_QHaE8?w=289&h=192&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.PD-16Gd8j6ZcwxgzFkYpfgHaHa?w=203&h=204&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.ORo3Vqxogif6-8kPNAPNeAHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Dumpling',
        'Peking Duck',
        'Zhajiangmian'
      ]
    ),
  PlaceDestination(
      name: 'Hagia Sophia',
      description:
          'Hagia Sophia, atau Ayasofya dalam bahasa Turki, terletak di kota Istanbul, Turki, di area bersejarah yang menghubungkan Eropa dan Asia. Tepatnya, Hagia Sophia berada di distrik Sultanahmet di bagian barat kota, yang dulunya dikenal sebagai Konstantinopel, ibu kota Kekaisaran Bizantium. Bangunan ini berdiri megah di dekat Selat Bosporus, selat yang memisahkan benua Eropa dan Asia, serta tidak jauh dari beberapa landmark bersejarah lainnya seperti Masjid Biru (Sultan Ahmed Mosque) dan Istana Topkapi.',
      image: 'images/hagia_sophia.jpg',
      location: 'Istanbul, Turkey',
      imageAsset: [
        'https://img.freepik.com/free-photo/beautiful-suleymaniye-camii-istanbul_661209-313.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/haghia-sophia-istanbul-turkey_661209-307.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid',
        'https://img.freepik.com/free-photo/view-world-monument-celebrate-world-heritage-day_23-2151297248.jpg?ga=GA1.1.1987740054.1685613357&semt=ais_hybrid'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.8NFd2wqeG9S53FODlddr9wHaHa?w=162&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.XBupuFHuJvTTxeB1IWvztQHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.skS9UP4_K0N0yotK0eEmvAHaHa?w=180&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Kebab',
        'Lahmacun',
        'Pide'
      ]
    ),
  PlaceDestination(
      name: "Katedral Pokrovsky",
      description:
          "Katedral Saint Basil (Saint Basil's Cathedral), yang dikenal sebagai Katedral Pokrovsky, adalah sebuah katedral ikonik di Lapangan Merah, Moskow, Rusia. Katedral ini merupakan salah satu landmark paling terkenal di Rusia dan dunia, sering dianggap sebagai simbol arsitektur Moskow yang unik.",
      image: 'images/saint_cathedral.jpg',
      location: 'Red Square, Moscow',
      imageAsset: [
        'https://th.bing.com/th/id/OIP.IJ_hIFOMRMdFYU0U78qyXAHaFa?w=263&h=192&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.BIoAIbEFSQ1KNZrYxG76rQHaE6?pid=ImgDet&w=199&h=131&c=7&dpr=1,5',
        'https://th.bing.com/th/id/OIP.x-VOP9Dfw6iXfNCHT9t71gHaE8?pid=ImgDet&w=199&h=132&c=7&dpr=1,5'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.bx_d5xQaubs4XCA72S-4HAHaHa?w=174&h=186&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.CUsyQTLThKTDDc3eUwDeGgHaHa?w=202&h=202&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.i-a9B04edYkYEJJoiS2TdQHaHa?w=193&h=192&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Solyanka',
        'Pirozhki',
        'Shashlik'
      ]
    ),
  PlaceDestination(
      name: 'Pizza Tower',
      description:
          'Menara Pisa atau Menara Miring Pisa (dalam bahasa Italia: Torre Pendente di Pisa) adalah salah satu monumen paling terkenal di dunia. Terletak di kota Pisa, Italia, menara ini merupakan bagian dari kompleks katedral di Piazza dei Miracoli (Lapangan Keajaiban), yang juga mencakup Katedral Pisa dan Baptisterium.',
      image: 'images/pizza_tower.jpg',
      location: 'Pisa, Italy',
      imageAsset: [
        'https://th.bing.com/th/id/OIP.gM5HtufilLKMccUJiYp6QQHaE8?w=253&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.Cd1DyIf4B5Dfqk4HP3NAYAHaE7?w=259&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP._ptYOPQfTI4-1frJ3AdSHQHaE8?w=257&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.B4sk-pUtxkc0GnDie2tMuAHaF7?w=219&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.8cifd1EPruLM9UfR5Vl7dAHaFj?w=202&h=152&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.KZx6qBbObQ2JRZ8SSnki_gHaHa?w=181&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Pizza',
        'Pasta',
        'Panini'
      ]
    ),
  PlaceDestination(
      name: 'Colosseum',
      description:
          'Colosseum adalah sebuah amfiteater besar yang terletak di pusat kota Roma, Italia, dan merupakan salah satu ikon paling terkenal dari Kekaisaran Romawi. Dibangun pada masa pemerintahan Kaisar Vespasian dari Dinasti Flavian sekitar tahun 70-80 M, Colosseum awalnya dikenal sebagai Amfiteater Flavian. Struktur monumental ini digunakan untuk berbagai jenis hiburan publik, termasuk pertarungan gladiator, eksekusi, perburuan hewan liar, dan pertunjukan dramatis yang menggambarkan pertempuran terkenal.',
      image: 'images/colosseum.jpg',
      location: 'Roma, Italy',
      imageAsset: [
        'https://th.bing.com/th/id/OIP.h3LE2mddli-Gsi0pE8Fi0wHgE_?w=258&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://ts1.mm.bing.net/th?id=OIP.VXsbVlSlH6mpLYqA-D4JoAHaFU&pid=15.1',
        'https://th.bing.com/th/id/OIP.epuhqUenhbfoBRl9I5lBBAHaEK?w=331&h=186&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.esyKrAS876B9E3tVTURcjgHaHa?w=167&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.TJ5dk1rLGHY7jj50RFjKBAHaHa?w=202&h=202&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.Cjax3PGkJDV7hEV3lKHEWAHaHa?w=170&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Antipasti',
        'Tiramisu',
        'Risotto'
      ]
    ),
  PlaceDestination(
      name: 'Machu Picchu',
      description:
          'Machu Picchu adalah sebuah situs arkeologi kuno yang terletak di pegunungan Andes, Peru. Terkenal sebagai salah satu warisan dunia yang paling ikonik, Machu Picchu dibangun oleh bangsa Inca pada abad ke-15, pada masa pemerintahan kaisar Pachacuti. Situs ini terletak di ketinggian sekitar 2.430 meter di atas permukaan laut, di atas Lembah Suci (Sacred Valley) yang dialiri Sungai Urubamba.',
      image: 'images/machu_picchu.jpg',
      location: 'Andes mountains, Peru',
      imageAsset: [
        'https://th.bing.com/th/id/OIP.Q2pf0wjTIKERuEXMfcX-KwHaEc?w=262&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.qnkfaqJMfwx82lkk1bSn_AHaEo?w=275&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.79ZX-_LUJG4AJLux888iSQHaE6?w=279&h=186&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodImage: [
        'https://th.bing.com/th/id/OIP.1es3vcrj9ddqqXMqMzA4qAHaHa?w=183&h=183&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.cXmwrCT9_M3A7l9SU_naVQHaE8?w=242&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
        'https://th.bing.com/th/id/OIP.7kJsFCkZL_c8OAHGfFyCWAHaJ3?w=148&h=198&c=7&r=0&o=5&dpr=1.5&pid=1.7'
      ],
      foodName: [
        'Ceviche',
        'Lomo Saltado',
        'Aji de Gallina'
      ]
    ),
];
