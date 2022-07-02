class Pesanan {
  final dynamic id;
  final dynamic sandwich;
  final dynamic burger;
  final dynamic frenchFriesh;
  final dynamic friedChicken;
  final dynamic cocaCola;
  final dynamic greenTea;
  final dynamic orangeJuice;
  final dynamic hargaSandwich;
  final dynamic hargaBurger;
  final dynamic hargaFrenchFriesh;
  final dynamic hargaFriedChicken;
  final dynamic hargaCocaCola;
  final dynamic hargaGreenTea;
  final dynamic hargaOrangeJuice;
  final dynamic total;

  const Pesanan({
    required this.id,
    required this.sandwich,
    required this.burger,
    required this.frenchFriesh,
    required this.friedChicken,
    required this.cocaCola,
    required this.greenTea,
    required this.orangeJuice,
    required this.hargaSandwich,
    required this.hargaBurger,
    required this.hargaFrenchFriesh,
    required this.hargaFriedChicken,
    required this.hargaCocaCola,
    required this.hargaGreenTea,
    required this.hargaOrangeJuice,
    required this.total,
  });

  factory Pesanan.fromJson(Map<String, dynamic> json) {
    return Pesanan(
      id: json['id'],
      sandwich: json['sandwich'],
      burger: json['burger'],
      frenchFriesh: json['frenchFriesh'],
      friedChicken: json['friedChicken'],
      cocaCola: json['cocaCola'],
      greenTea: json['greenTea'],
      orangeJuice: json['orangeJuice'],
      hargaSandwich: json['hargaSandwich'],
      hargaBurger: json['hargaBurger'],
      hargaFrenchFriesh: json['hargaFrenchFriesh'],
      hargaFriedChicken: json['hargaFriedChicken'],
      hargaCocaCola: json['hargaCocaCola'],
      hargaGreenTea: json['hargaGreenTea'],
      hargaOrangeJuice: json['hargaOrangeJuice'],
      total: json['total'],
    );
  }
}
