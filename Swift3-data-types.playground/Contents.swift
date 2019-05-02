//: Toni-Develops.com playground

import UIKit

let sec = 70

let h = sec / 3600
let m = (sec % 3600) / 60
let s = sec % 60


print("////////////////////////////////////////////////")
print("// CREATING ARRAYS")
print("////////////////////////////////////////////////")

// create empty array
var myArrayOne = Array<String>()
myArrayOne.append("Test Value")
print("Array one value: \(myArrayOne[0])")

// or using shorter syntax
var myArrayTwo = [Int]()
myArrayTwo.append(1)
myArrayTwo.append(2)
print("Array one value: \(myArrayTwo[1])")

// or with default values
var myArrayThree = ["one", "two", "three"]
print("Array one value: \(myArrayThree[1])")

// or
var myArrayFour = Array(repeating: 5, count: 3)
print("Array count: \(myArrayThree.count)")

//iterating over an array 
for item in myArrayTwo {
    print(item)
}

var mixedArray = Array<Any>()
mixedArray.append("This is string") // adding string
mixedArray.append(123)              // adding integer
mixedArray.append(2.64)             // double value
mixedArray.append(myArrayTwo)       // adding another array

print("Printing values of mixed array, converted to strings")
for item in mixedArray {
    let val: String = String(describing: item)
    print("\(val)")
}

print("////////////////////////////////////////////////")
print("// CREATING SETS")
print("// Sets unlike array could store only unsorted")
print("// unique values")
print("////////////////////////////////////////////////")

// create empty array
var mySetOne = Set<String>()
mySetOne.insert("one")
mySetOne.insert("two")
mySetOne.insert("three")
print("mySetOne does contain'two' :  \(mySetOne.contains("two")) ")

// iterating
for item in mySetOne {
    print("mySetOne: \(item)")
}
// we could create sets using Array literal too
var mySetTwo: Set<String> = ["One", "two"]

print("////////////////////////////////////////////////")
print("// CREATING DICTIONARIES")
print("////////////////////////////////////////////////")

// dictionary with integer values
var myDict = [String: Int]()
myDict["one"] = 1
myDict["two"] = 2
print("myDict value at positon 'one': \(myDict["one"]!)\n")


// dictionary with different types of objects
var obj = [String: AnyObject]()
obj["one"] = "12345" as AnyObject?
// velue two, contains second dictionary
obj["two"] = ["user": ["name": "Jim", "email": "jim@yahoo.com"] ] as AnyObject?
obj["three"] = "1221" as AnyObject?
// value 'four' is Integer
obj["four"] = 25 as AnyObject

//getting second dictionary inside value 'two'
var subDict = obj["two"]! as! [String: AnyObject]
print("\n'subDict' value: \(subDict)")

// retreiving specific value
var subDict_user_name = ((obj["two"]! as! [String: AnyObject])["user"] as! [String: AnyObject])["email"] as! String
print("\n'subDict_user_name' value: \(subDict_user_name)")



print("////////////////////////////////////////////////")
print("// UNDERSTANDING OPTIONAL TYPES")
print("////////////////////////////////////////////////")


print("###########################")
print("Example 1")
print("###########################")

var postData = ["command_signal": "starting",
                "run_type" : "0",
                "timestamp": "2017-01-31 21:02:16",
                "user_id" : "123",
                "screenname": "BlueStory",
                "coordinates": ["one", "two", "three"],
                "token": "a82a16ee41b1bd3fae0b516925cef126_1485928752"] as [String : Any]


let postData2 = ["TEST" : "1212121"]

func arrayToPostString(postArray: Array<Any>) -> String {
    var o = ""
    var c = 0
    for element in postArray {
        let e:String = element as! String
        o = o + "\"" + e + "\""
        c = c + 1
        if c < postArray.count {
            o = o + ", "
        }
    }
    o = "[" + o + "]"
    return o
}

func dataToPostString(postData:[String: Any]) -> String {
    var o = ""
    var c = 0
    for(key, element) in postData {
        if element is String {
            let str: String = element as! String
            o = o + "\"" + key + "\": \"" + str + "\""

        }
        else if element is Array<Any> {
            let el = element as! Array<Any>
            o = o + "\"" + key + "\": " + arrayToPostString(postArray: el)
        }

        c = c + 1
        if c < postData.count {
            o = o + ", "
        }
        
    }
    o = "{" + o + "}"
    return o
}



var result1 = dataToPostString(postData: postData)
print(result1)



let currentDateTime = String(describing: Date())

print(currentDateTime)

print("##################################")
print("##################################")

var distance = 5.12634553
var distanceStr = String(format: "%.2f", distance)
print(distanceStr)

print("##################################")
print(" ENUM ")
print("##################################")


