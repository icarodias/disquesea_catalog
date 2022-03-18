class Database {
  List<String> itemSet = [
    "fish",
    "shrimp",
    "seafood",
    "meat",
    "birds",
    "snack",
    "others"
  ];
  String translate(String name) {
    if (name == "fish") {
      return "Peixes";
    }
    if (name == "shrimp") {
      return "Camarão";
    }
    if (name == "seafood") {
      return "Frutos do Mar";
    }
    if (name == "meat") {
      return "Carnes";
    }
    if (name == "birds") {
      return "Aves";
    }
    if (name == "snack") {
      return "Petiscos";
    }
    if (name == "others") {
      return "Diversos";
    } else {
      return "";
    }
  }

  Map<String, List<Map<String, dynamic>>> items = {
    "fish": [
      {"name": "Filé de Dourado", "price": 32.00, "amount": "Kg"},
      {"name": "Filé de Abadejo", "price": 34.00, "amount": "Kg"},
      {"name": "Filé de Linguado", "price": 34.00, "amount": "Kg"},
      {"name": "Filé de Arabaiana", "price": 34.00, "amount": "Kg"},
      {"name": "Filé de Pescada Amarela", "price": 43.90, "amount": "Kg"},
      {"name": "Filé de Cavala", "price": 44.00, "amount": "Kg"},
      {"name": "Filé de Garoupa", "price": 44.90, "amount": "Kg"},
      {"name": "Filé de Beijupirá", "price": 41.00, "amount": "Kg"},
      {"name": "Filé de Sirigado", "price": 59.00, "amount": "Kg"},
      {"name": "Filé de Salmão", "price": 85.00, "amount": "Kg"},
      {"name": "Filé de Pargo M s/pele", "price": 42.90, "amount": "Kg"},
      {"name": "Filé de Pargo P s/pele", "price": 39.00, "amount": "Kg"},
      {"name": "Filé de Tilápia s/pele", "price": 39.90, "amount": "Kg"},
      {"name": "Filé de Atum", "price": 29.90, "amount": "Kg"},
      {"name": "Filé de Bacalhau dessalgado", "price": 59.00, "amount": "Kg"},
      {"name": "Sardinha limpa", "price": 15.00, "amount": "Kg"},
      {"name": "Cavala em postas", "price": 35.00, "amount": "Kg"},
      {"name": "Tilápia em postas", "price": 22.90, "amount": "Kg"},
      {"name": "Tilápia eviscerada", "price": 19.90, "amount": "Kg"},
      {"name": "Arraia Desfiada", "price": 28.00, "amount": "Kg"}
    ],
    "shrimp": [
      {"name": "Filé de Camarão P ", "price": 48.00, "amount": "Kg"},
      {"name": "Filé de Camarão M", "price": 58.00, "amount": "Kg"},
      {"name": "Filé de Camarão G", "price": 85.00, "amount": "Kg"},
      {"name": "Filé de Camarão GG", "price": 95.00, "amount": "Kg"},
      {"name": "Camarão M s/cabeça", "price": 55.00, "amount": "Kg"},
      {"name": "Camarão M inteiro", "price": 38.00, "amount": "Kg"},
      {"name": "Camarão Sossego ", "price": 35.00, "amount": "Kg"}
    ],
    "seafood": [
      {"name": "Carne de Caranguejo", "price": 59.00, "amount": "Kg"},
      {"name": "Sururu", "price": 28.00, "amount": "Kg"},
      {"name": "Mexilhão desconchado", "price": 58.00, "amount": "Kg"},
      {"name": "Mexilhão meia conha", "price": 48.00, "amount": "Kg"},
      {"name": "Lula em anéis", "price": 58.00, "amount": "Kg"},
      {"name": "Paella", "price": 59.00, "amount": "Kg"},
      {"name": "Tentáculos de Polvo ", "price": 59.00, "amount": "Kg"}
    ],
    "meat": [
      {"name": "Filé Suíno", "price": 28.90, "amount": "Kg"},
      {"name": "Costelinha Suína", "price": 28.90, "amount": "kg"},
      {"name": "Picadinho de Cordeiro", "price": 32.90, "amount": "Kg"},
      {"name": "Buchada de Cordeiro", "price": 38.00, "amount": "Kg"},
      {"name": "Paleta de Cordeiro", "price": 45.90, "amount": "Kg"},
      {"name": "Costela de Cordeiro", "price": 35.90, "amount": "Kg"},
      {"name": "Pernil de Cordeiro c/osso", "price": 48.90, "amount": "Kg"},
      {"name": "Pernil de Cordeiro s/osso", "price": 65.00, "amount": "Kg"},
      {"name": "Carré de Cordeiro", "price": 95.00, "amount": "Kg"},
      {"name": "Maminha Grill", "price": 47.90, "amount": "Kg"},
      {"name": "Picanha Importada", "price": 98.90, "amount": "Kg"},
      {"name": "Linguiça Toscana", "price": 21.90, "amount": "600 g"},
      {"name": "Linguiça de Frango", "price": 18.90, "amount": "600 g"},
      {"name": "Linguiça tipo Cuiabana", "price": 25.90, "amount": "500 g"}
    ],
    "birds": [
      {"name": "Frango Caipira", "price": 18.90, "amount": "Kg"},
      {"name": "Sobrecoxa de Frango", "price": 15.90, "amount": "Kg"},
      {"name": "Filé de peito de Frango", "price": 18.90, "amount": "Kg"},
      {"name": "Capote Caipira", "price": 33.90, "amount": "Kg"},
      {"name": "Coxinha da Asa", "price": 16.90, "amount": "Kg"},
      {"name": "Coxa desossada", "price": 18.90, "amount": "Kg"}
    ],
    "snack": [
      {"name": "Miniquiches", "price": 16.00, "amount": "12 uni."},
      {"name": "Pão de Queijo", "price": 15.00, "amount": "500g"},
      {
        "name": "Patinha de Caranguejo empanada",
        "price": 19.00,
        "amount": "12 uni."
      },
      {"name": "Isca de Peixe", "price": 10.00, "amount": "12 uni."},
      {"name": "Camarão empanado", "price": 16.00, "amount": "12 uni."},
      {"name": "Bolinha de Peixe", "price": 10.00, "amount": "12 uni."},
      {"name": "Bolinha de Queijo", "price": 10.00, "amount": "12 uni."},
      {"name": "Bolinho de Bacalhau", "price": 24.00, "amount": "12 uni."}
    ],
    "others": [
      {"name": "Manteiga da Terra", "price": 16.00, "amount": "500ml"},
      {"name": "Queijo Coalho ", "price": 38.00, "amount": "Kg"},
      {"name": "Polpas de Frutas", "price": 15.00, "amount": "Kg"},
      {"name": "Goma de Tapioca", "price": 7.00, "amount": "Kg"},
      {"name": "Castanha de Caju ", "price": 60.00, "amount": "Kg"},
      {"name": "Doces Diversos", "price": 18.00, "amount": "uni."}
    ]
  };
}