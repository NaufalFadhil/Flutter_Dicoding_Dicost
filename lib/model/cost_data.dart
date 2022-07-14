class CostData {
  String name;
  String city;
  String location;
  String description;
  int? availability;
  String price;
  String imageAsset;
  List<String> imageAssets;
  List<String> facilities;

  CostData({
    required this.name,
    required this.city,
    required this.location,
    required this.price,
    required this.availability,
    required this.description,
    required this.imageAsset,
    required this.imageAssets,
    required this.facilities,
  });
}

var costDataList = [
  CostData(
    name: 'DICOST Fatmawati',
    city: 'Jakarta',
    location: 'Fatmawati',
    price: '5.500.000',
    availability: 5,
    description: 'Berlokasi di salah satu area premium dan terpopuler di Jakarta yang dikelilingi dengan pemukiman mewah, DICOST Lotus merupakan tempat tinggal yang tepat bagi Anda yang ingin hidup trendy dan modis. Bangunan ini dilengkapi dengan teras, dapur dan area makan bersama, serta tempat parkir.',
    imageAsset: 'images/fatmawati-1.jpg',
    imageAssets: [
      'images/fatmawati-1.jpg',
      'images/fatmawati-2.jpg',
    ],
    facilities: [
      'Icon.'
    ],
  ),
  CostData(
    name: 'DICOST Monas',
    city: 'Jakarta',
    location: 'Monas',
    price: '3.900.000',
    availability: 2,
    description: 'Lokasi strategis yang menawarkan banyak fasilitas dan akses mudah menjadikan hunian DICOST Monas pilihan tepat di pusat Jakarta. Anda dapat rasakan pengalaman seru tinggal di hunian yang baru jadi ini.',
    imageAsset: 'images/monas-1.jpg',
    imageAssets: [
      'images/monas-1.jpg',
      'images/monas-2.jpg',
      'images/monas-3.jpg',
      'images/monas-4.jpg',
    ],
    facilities: [
      'bed'
    ],
  ),
  CostData(
    name: 'DICOST Salemba',
    city: 'Jakarta',
    location: 'Salemba',
    price: '3.700.000',
    availability: 8,
    description: 'Moderen dan juga minimalis adalah ungkapan yang paling cocok untuk menggambarkan bangunan kost ini. Desainnya yang trendy dan dilengkapi dengan tanaman hijau menghadirkan suasana ketenangan dan kenyamanan. Kost eksklusif ini memiliki segalanya, mulai dari lift, dapur dan ruang makan, area umum, bahkan rooftop.',
    imageAsset: 'images/salemba-1.jpg',
    imageAssets: [
      'images/salemba-1.jpg',
      'images/salemba-2.jpg',
      'images/salemba-3.jpg',
      'images/salemba-4.jpg',
    ],
    facilities: [
      'Icon.'
    ],
  ),
  CostData(
    name: 'DICOST Pejaten',
    city: 'Jakarta',
    location: 'Pejaten',
    price: '4.400.000',
    availability: 3,
    description: 'Mudah menjangkau pusat perbenlanjaan, restoran dan bar terkenal di Jakarta Selatan, DICOST Pejaten terletak berdekatan dengan area populer seperti Kemang, Ampera, dan Pasar Minggu. Kamar-kamar yang luas dan cantik, terdapat pula fasilitas umum seperti dapur, area bersantai untuk kenyamanan hunian yang maksimal.',
    imageAsset: 'images/pejaten-1.jpg',
    imageAssets: [
      'images/pejaten-1.jpg',
      'images/pejaten-2.jpg',
      'images/pejaten-3.jpg',
    ],
    facilities: [
      'Icon.'
    ]
  ),
  CostData(
    name: 'DICOST Antasari',
    city: 'Jakarta',
    location: 'Antasari',
    price: '6.500.000',
    availability: 5,
    description: 'Didesain dengan gaya minimalis modern dan dilengkapi dengan berbagai fasilitas, DICOST Prima Mansion adalah tempat tinggal yang sempurna bagi para professional muda. Tempat co-living ini memiliki lokasi yang sangat strategis di kawasan Antasari, Cilandak hanya dengan jarak 3 km dari MRT Haji Nawi.',
    imageAsset: 'images/antasari-1.jpg',
    imageAssets: [
      'images/antasari-1.jpg',
      'images/antasari-2.jpg',
      'images/antasari-3.jpg',
    ],
    facilities: [
      'Icon.'
    ],
  ),
  CostData(
    name: 'DICOST Fatmawati 2',
    city: 'Jakarta',
    location: 'Fatmawati',
    price: '5.500.000',
    availability: 5,
    description: 'Berlokasi di salah satu area premium dan terpopuler di Jakarta yang dikelilingi dengan pemukiman mewah, DICOST Lotus merupakan tempat tinggal yang tepat bagi Anda yang ingin hidup trendy dan modis. Bangunan ini dilengkapi dengan teras, dapur dan area makan bersama, serta tempat parkir.',
    imageAsset: 'images/fatmawati-1.jpg',
    imageAssets: [
      'images/fatmawati-1.jpg',
      'images/fatmawati-2.jpg',
    ],
    facilities: [
      'Icon.'
    ],
  ),
  CostData(
    name: 'DICOST Monas 2',
    city: 'Jakarta',
    location: 'Monas',
    price: '3.900.000',
    availability: 2,
    description: 'Lokasi strategis yang menawarkan banyak fasilitas dan akses mudah menjadikan hunian DICOST Monas pilihan tepat di pusat Jakarta. Anda dapat rasakan pengalaman seru tinggal di hunian yang baru jadi ini.',
    imageAsset: 'images/monas-1.jpg',
    imageAssets: [
      'images/monas-1.jpg',
      'images/monas-2.jpg',
      'images/monas-3.jpg',
      'images/monas-4.jpg',
    ],
    facilities: [
      'bed'
    ],
  ),
  CostData(
    name: 'DICOST Salemba 2',
    city: 'Jakarta',
    location: 'Salemba',
    price: '3.700.000',
    availability: 8,
    description: 'Moderen dan juga minimalis adalah ungkapan yang paling cocok untuk menggambarkan bangunan kost ini. Desainnya yang trendy dan dilengkapi dengan tanaman hijau menghadirkan suasana ketenangan dan kenyamanan. Kost eksklusif ini memiliki segalanya, mulai dari lift, dapur dan ruang makan, area umum, bahkan rooftop.',
    imageAsset: 'images/salemba-1.jpg',
    imageAssets: [
      'images/salemba-1.jpg',
      'images/salemba-2.jpg',
      'images/salemba-3.jpg',
      'images/salemba-4.jpg',
    ],
    facilities: [
      'Icon.'
    ],
  ),
  CostData(
      name: 'DICOST Pejaten 2',
      city: 'Jakarta',
      location: 'Pejaten',
      price: '4.400.000',
      availability: 3,
      description: 'Mudah menjangkau pusat perbenlanjaan, restoran dan bar terkenal di Jakarta Selatan, DICOST Pejaten terletak berdekatan dengan area populer seperti Kemang, Ampera, dan Pasar Minggu. Kamar-kamar yang luas dan cantik, terdapat pula fasilitas umum seperti dapur, area bersantai untuk kenyamanan hunian yang maksimal.',
      imageAsset: 'images/pejaten-1.jpg',
      imageAssets: [
        'images/pejaten-1.jpg',
        'images/pejaten-2.jpg',
        'images/pejaten-3.jpg',
      ],
      facilities: [
        'Icon.'
      ]
  ),
  CostData(
    name: 'DICOST Antasari 2',
    city: 'Jakarta',
    location: 'Antasari',
    price: '6.500.000',
    availability: 5,
    description: 'Didesain dengan gaya minimalis modern dan dilengkapi dengan berbagai fasilitas, DICOST Prima Mansion adalah tempat tinggal yang sempurna bagi para professional muda. Tempat co-living ini memiliki lokasi yang sangat strategis di kawasan Antasari, Cilandak hanya dengan jarak 3 km dari MRT Haji Nawi.',
    imageAsset: 'images/antasari-1.jpg',
    imageAssets: [
      'images/antasari-1.jpg',
      'images/antasari-2.jpg',
      'images/antasari-3.jpg',
    ],
    facilities: [
      'Icon.'
    ],
  ),
];