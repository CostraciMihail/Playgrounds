//: Playground - noun: a place where people can play

import UIKit
import Foundation

var simpleString = "text"
simpleString.string


let array = [3, 4, 54, 79, 123, 409, 79, 123, 409, 79, 123, 409, 12, 45, 76, 900, 10032, 409, 79, 123, 409, 79, 123, 409, 12, 45, 76, 900, 10032
, 409, 79, 123, 409, 79, 123, 409, 12, 45, 76, 900, 10032, 409, 79, 123, 409, 79, 123, 409, 12, 45, 76, 900, 10032, 409, 79, 123, 409, 79, 123, 409, 12, 45, 76, 900, 10032]



func simpleFunction(array: [Int], f: ([Int]) -> ()) -> () {
	
	print("simpleFunction")
	
	f(array)
}


simpleFunction(array, f: {(array) -> () in
	
	print("Closures")
})




//.......

func sorttedArrayWithArray(array: [Int]) ->([Int]){
	
	var count = 0

	var tmpArray = [Int]()
	
	for item in array {
		
		count += 1
		
		if item % 2 == 0 {
			tmpArray.append(item)
			
		}
	}
	
	count
	return tmpArray
}

let var2 = sorttedArrayWithArray(array)



//...............

func sorttedArrayWithDictionary(array: [Int]) ->([Int]){
	
	var dict = [Int: Bool]()
	var count = 0
	
	for item in array {
		
		count += 1
		dict[item] = true
	}
	
	count
	
	count = 0
	
	var tmpArray = [Int]()
	
	for item in dict {
		
		count += 1
		
		if item.1 {
			
			if item.0 % 2 == 0 {
				tmpArray.append(item.0)
				
			}
		}
	}
	
	return tmpArray
}

let var1 = sorttedArrayWithDictionary(array)

//...................












 //MARK: Closure
//.......

func sorttedArrayWithArrayClosure(function: ([Int]) -> ([Int])) -> ([Int]) {
	
	var count = 0
	
	var tmpArray = [Int]()
	
	
	for item in function(array) {
		
		count += 1
		
		if item % 2 == 0 {
			tmpArray.append(item)
			
		}
	}
	
	count
	return tmpArray
}



//...............

var var5 =
sorttedArrayWithArrayClosure() { array in
	
	var tmpArray = [Int]()
	var dict = [Int: Bool]()
	var count = 0
	
	for item in array {
		
		count += 1
		dict[item] = true
	}
	
	for item in dict {
		
		count += 1

		if item.1 {
			
			tmpArray.append(item.0)
		}
	}

	count

	return tmpArray
}

var5






///....................................


let tmpClosure = {(s: Int) -> Bool in
	
					if s == 1 	{ return true }

					else { 	return false }
				}


let tmpVar = tmpClosure(4)
print("\(tmpVar)")













