class Pesanan {
  final int id;
  final int sandwich;
  final int burger;
  final int frenchFriesh;
  final int friedChicken;
  final int cocaCola;
  final int greenTea;
  final int orangeJuice;
  final int hargaSandwich;
  final int hargaBurger;
  final int hargaFrenchFriesh;
  final int hargaFriedChicken;
  final int hargaCocaCola;
  final int hargaGreenTea;
  final int hargaOrangeJuice;
  final int total;

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
