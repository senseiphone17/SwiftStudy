/// Array replace

var pokemons = ["ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]
print(pokemons) // ["ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]

pokemons[0...0] = ["ピチュー", "ライチュウ"]
print(pokemons) // ["ピチュー", "ライチュウ", "カイリュー", "ヤドラン", "ピジョン"]

pokemons[2...3] = ["メガヤドラン"]
print(pokemons) // ["ピチュー", "ライチュウ", "メガヤドラン", "ピジョン"]

pokemons[1...2] = []
print(pokemons) // ["ピチュー", "ピジョン"]