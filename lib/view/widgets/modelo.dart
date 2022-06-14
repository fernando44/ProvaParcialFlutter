class Modelo {
  String id;
  String marca;
  String carro;
  String clasificacao;

  Modelo(this.id, this.marca, this.carro, this.clasificacao);

  factory Modelo.fromJson(String id, Map<String, dynamic> json) {
    return Modelo(
      id,
      json['marca'],
      json['carro'],
      json['clasificacao'],
    );
  }
}
