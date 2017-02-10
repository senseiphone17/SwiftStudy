let gu: Character = "\u{30B0}"
print(gu)

let ku: Character = "\u{30AF}\u{3099}"
print(ku)

print(gu == ku)

func printStringPerCharacters(_ str: String) {
    for character in str.characters {
        print(character)
    }
}

printStringPerCharacters("いろはにほへと") // い\nろ\nは\nに\nほ\nへ\nと

func printStringPerCharactersReversed(_ str: String) {
    for character in str.characters.reversed() {
        print(character)
    }
}

printStringPerCharactersReversed("いろはにほへと") // と\nへ\nほ\nに\nは\nろ\nい

