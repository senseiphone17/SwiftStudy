/// Array insert

let pokemons = ["ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]
print(pokemons) // ["ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]

var temp1 = pokemons
print(temp1) // ["ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]

temp1.insert("フシギダネ", at: 0)
print(temp1) // ["フシギダネ", "ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]

let temp2 = ["ヒトカゲ"] + pokemons
print(temp2) // ["ヒトカゲ", "ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]

temp1.sort()
print(temp1) // ["カイリュー", "ピカチュー", "ピジョン", "フシギダネ", "ヤドラン"]

let temp3 = temp2.sorted()
print(temp2) // ["ヒトカゲ", "ピカチュー", "カイリュー", "ヤドラン", "ピジョン"]
print(temp3) // ["カイリュー", "ピカチュー", "ピジョン", "ヒトカゲ", "ヤドラン"]