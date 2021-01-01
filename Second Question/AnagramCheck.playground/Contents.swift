import Foundation

//Implemetation
func isAnagrams(firstWord: String,secondWord: String)->Bool{
    let firstWordNormalized = firstWord.lowercased().replacingOccurrences(of: " ", with: "")
    let secondWordNormalized = secondWord.lowercased().replacingOccurrences(of: " ", with: "")
    let firstWordAsSet = Set(Array(firstWordNormalized))
    let secondWordAsSet = Set(Array(secondWordNormalized))
    return firstWordAsSet == secondWordAsSet
}

//Testing
print(isAnagrams(firstWord: "debit card", secondWord: "bad credit"))
print(isAnagrams(firstWord: "punishments", secondWord: "nine thumps"))

