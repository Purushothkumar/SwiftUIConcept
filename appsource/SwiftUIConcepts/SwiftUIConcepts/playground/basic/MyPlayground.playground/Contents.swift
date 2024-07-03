import UIKit

//let range = ...5
//range.contains(7)   // false
//range.contains(4)   // true
//range.contains(-1)  // true
//
//print(range)
//for character in "Dog!🐶" {
//    print(character)
//}
//
//
//var shoppingList = ["Eggs", "Milk"]
//shoppingList += ["Baking Powder"]
//
//var firstItem = shoppingList[0]
//
//print (firstItem)
//for (index, value) in shoppingList.enumerated() {
//    print("Item \(index + 1): \(value)")
//}
//
//
//
////repeat while
//
//var counter = 0
//
//repeat {
//    print("Counter is \(counter)")
//    counter += 1
//} while counter < 5
//
//
// counter = 0
//// while
//
//while counter < 5 {
//    print("Counter is \(counter)")
//    counter += 1
//
//}
//
///*
// Control Transfer Statements
// Control transfer statements change the order in which your code is executed, by transferring control from one piece of code to another. Swift has five control transfer statements:
//
// continue
// break
// fallthrough
// return
// throw
// */
//
///*
// Continue
// The continue statement tells a loop to stop what it’s doing and start again at the beginning of the next iteration through the loop.
// */
//let puzzleInput = "great minds think alike"
//var puzzleOutput = ""
//let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
//for character in puzzleInput {
//    if charactersToRemove.contains(character) {
//        continue
//    }
//    puzzleOutput.append(character)
//}
//
///*
// Break
// The break statement ends execution of an entire control flow statement immediately. The break statement can be used inside a switch or loop statement when you want to terminate the execution of the switch or loop statement earlier than would otherwise be the case.
// */
//
//let numberSymbol: Character = "三"  // Chinese symbol for the number 3
//
//var possibleIntegerValue: Int?
//switch numberSymbol {
//case "1", "١", "一", "๑":
//    possibleIntegerValue = 1
//    print("case 1")
//case "2", "٢", "二", "๒":
//    possibleIntegerValue = 2
//    print("case 2")
//case "3", "٣", "三", "๓":
//    possibleIntegerValue = 3
//    print("case 3")
//case "4", "٤", "四", "๔":
//    possibleIntegerValue = 4
//    print("case 4")
//default:
//    break
//}
//if let integerValue = possibleIntegerValue {
//    print("The integer value of \(numberSymbol) is \(integerValue).")
//} else {
//    print("An integer value couldn't be found for \(numberSymbol).")
//}
//
//
//

// functions
//func todo(a: Int, b:Int , operation:(Int, Int) -> Int) -> Int{
//    return operation(a,b)
//
//}
//let result = todo(a: 4, b: 2, operation: { $0 + $1 })
//print(result)  // Output: 6
//
//
//let a = { (name: String) -> String in
//    return "Hello, \(name)!"
//}
//let greeting = { (name: String) -> String in
//    return "Hello, \(name)!"
//}

// inout
func increment(a : inout Int){
    a += 1
}
var num = 10
increment(a: &num)



let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*
var reversedName = names.sorted(by: {(s1: String, s2: String) -> Bool in

 return s1 > s2
 })
 */
var reversednames = names.sorted {$0 > $1}
print(reversednames)

let numbers = [435,5454,45,453,545,34543,534,53,45,345,43,534,543,53,45,345,345]

print(numbers.sorted {$0 < $1})

let numbers1:Set = [435,5454,45,453,545,34543,534,53,45,345,43,534,543,53,45,345,345]
print(numbers1.sorted {$0 < $1})


enum barcode{
    case upc(Int,Int,Int,Int)
    case qrcode(String)

}

enum State: String , CaseIterable{

    case andhraPradesh = "ANDHRA PRADESH"
    case arunachalPradesh = "ARUNACHAL PRADESH"
    case assam = "ASSAM"
    case bihar = "BIHAR"
    case chhattisgarh = "CHHATTISGARH"
    case goa = "GOA"
    case gujarat = "GUJARAT"
    case haryana = "HARYANA"
    case himachalPradesh = "HIMACHAL PRADESH"
    case jammuAndKashmir = "JAMMU AND KASHMIR"
    case jharkhand = "JHARKHAND"
    case karnataka = "KARNATAKA"
    case kerala = "KERALA"
    case madhyaPradesh = "MADHYA PRADESH"
    case maharashtra = "MAHARASHTRA"
    case manipur = "MANIPUR"
    case meghalaya = "MEGHALAYA"
    case mizoram = "MIZORAM"
    case nagaland = "NAGALAND"
    case odishaOrissa = "ODISHA(ORISSA)"
    case puducherry = "PUDUCHERRY"
    case punjab = "PUNJAB"
    case rajasthan = "RAJASTHAN"
    case sikkim = "SIKKIM"
    case tamilNadu = "TAMIL NADU"
    case telangana = "TELANGANA"
    case tripura = "TRIPURA"
    case uttarPradesh = "UTTAR PRADESH"
    case uttarakhand = "UTTARAKHAND"
    case westBengal = "WEST BENGAL"


    static func returnEnumValue() -> [String]{
       return State.allCases.map{$0.rawValue}
    }
}

var stateListArray = State.returnEnumValue()

print(stateListArray)


enum weekdays : Int,CaseIterable{
    case sunday = 1
    case monday
    case tuesday
    case wedday
    case thursday
    case friday
    case satday

    static func returnEnumValue() -> [Int]{
        return weekdays.allCases.map{$0.rawValue}
    }
    static func returnIncrementalEnumValue() -> [Int]{
        return weekdays.allCases.map{$0.rawValue + 1}
    }
}
let cfd = weekdays.returnEnumValue()
let cfd1 = weekdays.returnIncrementalEnumValue()

print(cfd)
print(cfd1)


enum arthimeticvalues{
    case a(Int)
    case b(Int)
    indirect case addition(Int,Int)
    indirect case sub(Int,Int)

}

indirect enum arthimeticfunc{
    case addition(Int, Int)
    case sub(Int,Int)
}

arthimeticvalues.addition(5, 6)
