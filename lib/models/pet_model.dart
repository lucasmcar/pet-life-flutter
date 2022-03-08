class Pet {
  String nome;
  String? imageUrl;
  String descricao;
  int idade;
  String sexo;
  String cor;
  String bio;
  String? id;

  Pet(
      {required this.nome,
      this.imageUrl,
      required this.descricao,
      required this.idade,
      required this.sexo,
      required this.cor,
      required this.bio,
      this.id});
}

var pets = [];
