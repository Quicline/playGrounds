import Cocoa
/*
 Checkpoint2 :
 
 Create an array of strings, then write some code that prints the
 number of items in the array and also the number of unique items in
 the array.
 
*/

let list: [String] = ["James","Liz","Andrea","James"]
var uniqueList: Set<String> = Set(list)

print("Unique names in the list \(uniqueList.count): \(uniqueList)")
print("Names in the list \(list.count): \(list)")
