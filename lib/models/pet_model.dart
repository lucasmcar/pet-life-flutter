class Pet {
  String nome;
  String imageUrl;
  String descricao;
  int idade;
  String sexo;
  String cor;
  String bio;
  String id;

  Pet({
    required this.nome,
    required this.imageUrl,
    required this.descricao,
    required this.idade,
    required this.sexo,
    required this.cor,
    required this.bio,
    required this.id
  });
}

var pets = [
  Pet(
    nome: "Totó",
    imageUrl: 'assets/images/toto.jpg',
    descricao: "Um cachorro esperto",
    idade: 2,
    sexo: "Macho",
    cor: "Marrom",
    bio: "Sou um cachorro bem esperto, brincalhão. " + 
    "\n Independente. Muito manso e sempre bem receptivo ",
    id: "1"
  ),
  Pet(
    nome: "Arnaldo",
    imageUrl: 'assets/images/arnaldo.jpg',
    descricao: "Um cachorro elétrico",
    idade: 3,
    sexo: "Macho",
    cor: "Preto",
    bio: "Sou um cachorro bem esperto e elétrico",
    id: "2"
  ),
];
