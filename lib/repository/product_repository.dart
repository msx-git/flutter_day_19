import '../models/product.dart';

class ProductRepository {
  ProductRepository._();

  static final ProductRepository _productRepository = ProductRepository._();

  factory ProductRepository() {
    return _productRepository;
  }

  List<Product> products = [
    Product(
        title: "Gentra 2023 автомат Халол насия/ Автовыкуп",
        isNew: false,
        price: 18500,
        address: "Эшангузар, Ташкентская область",
        imageUrl:
            "https://frankfurt.apollo.olxcdn.com/v1/files/tc4utsopq63d1-UZ/image;s=1000x700"),
    Product(
        title: "Керамика для авто!",
        isNew: true,
        price: 27,
        address: "Ташкент, Юнусабадский район",
        imageUrl:
            "https://frankfurt.apollo.olxcdn.com/v1/files/kv9usmal137w1-UZ/image;s=1000x700"),
    Product(
        title: "Скоттиш Фолд",
        isNew: false,
        price: 350,
        address: "Эшангузар, Ташкентская область",
        imageUrl:
            "https://frankfurt.apollo.olxcdn.com/v1/files/bhmb1p2jy56r-UZ/image;s=1000x700"),
    Product(
        title: "3 xonali dom",
        isNew: true,
        price: 47500,
        address: "Кибрай, Ташкентская область",
        imageUrl:
            "https://frankfurt.apollo.olxcdn.com/v1/files/rx56m310qm0z1-UZ/image;s=1000x700"),
    Product(
        title: "Велосипед BONVI 20",
        isNew: true,
        price: 48,
        address: "Ташкент, Сергелийский район",
        imageUrl:
            "https://frankfurt.apollo.olxcdn.com/v1/files/tccamvggwg0s1-UZ/image;s=1000x700"),
    Product(
        title: "Chevrolet Monza 1.5",
        isNew: false,
        price: 17300,
        address: "Ташкент, Юнусабадский район",
        imageUrl:
            "https://frankfurt.apollo.olxcdn.com/v1/files/0ferl08tfpit-UZ/image;s=1000x700"),
    Product(
        title: "Yangi hovli uy sotiladi",
        isNew: false,
        price: 96000,
        address: "Гулистан, Сырдарьинская область",
        imageUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/zbaifmu0kees3-UZ/image;s=1000x700"),
    Product(
        title: "Mi pencil stylus (оптом)",
        isNew: true,
        price: 65,
        address: "Гулистан, Сырдарьинская область",
        imageUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/2ahn5nrxoncr2-UZ/image;s=1000x700"),
    Product(
        title: "BMW3 330 Li M Sport Dark Set шикарное авто",
        isNew: true,
        price: 53900,
        address: "Яккасарайский район",
        imageUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/ia5fxlftfdqp3-UZ/image;s=1000x700"),
  ];
}
