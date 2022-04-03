class Banco {
  int id;
  String abreviatura;
  String nome;
  String area;
  String capital;
  String historico;

  Banco(this.id, this.abreviatura, this.nome, this.area, this.capital,
      this.historico);

  //Transformar dados no formato JSON em um objeto
  //da classe Pais
  factory Banco.fromJson(Map<String, dynamic> json) {
    return Banco(
        json['id']['M49'],
        json["id"]["ISO-3166-1-ALPHA-2"],
        json["nome"]["abreviado"],
        json["area"]["total"],
        json["governo"]["capital"]["nome"],
        json["historico"]);
  }
}
