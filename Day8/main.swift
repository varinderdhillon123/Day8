//
//  main.swift
//  Day8
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

//closures

//1. simple eg
let divide =
{
    (val1: Int , val2: Int)-> Int in
            
    return val1/val2
    
}

let result = divide(10,2)
print(result)


//2. expression eg

let concatStr = {
    
    (s1: String, s2: String)->String in
    

    let val = String(format: " %@ %@" , s1 ,s2)
    return val
}
let myFunc: (String , String)->String
myFunc = concatStr
let myResult = myFunc ( "Toronto" ,  "City")
print(myResult)

//3. single expression implicit

var myArray: [Int] = [5 , 6 , 75 , 20 ,36]

let sum = myArray.map

    {
        (x)-> Int in
        return  x + 1
}
print (sum)



let add =
{
    (n1: Int , n2: Int)->Bool in
    return n1 > n2
}

var desc = myArray.sorted(by: { (n1 ,n2 )-> Bool in
return n1 > n2
})
print(desc)


var myArray1: [String] = ["Canada" , "India" , "Russia"]

var desc1 = myArray1.sorted(by: { (n1 ,n2 )-> Bool in
    return n1 > n2
})
print(desc1)


var asc1 = myArray1.sorted(by: { (n1 ,n2 )-> Bool in
    return n1 < n2
})
print(asc1)

desc = myArray.sorted(by: add)
print(desc)
desc = myArray.sorted(by: { (n1, n2)  in
    return n1 > n2 //one line
})
print(desc)
desc = myArray.sorted(by: {
    return $0 > $1 //one line
})
print(desc)
desc = myArray.sorted(by: >)
print(desc)



//Escaping

func call(completion: @escaping (_: Bool) -> Void)
{
    sleep(3)
    completion(false)
}


print("START")
    call {
    (flag) in
    print("inside block false" , flag)
}
print("END")


func moreSUM(  sumFunc: @escaping (_:Int)-> Void)
{
    for x in 1...10
    {
        sumFunc(x)
        sleep(2)
    }
}

moreSUM
    {
    (y) in
    print(y)
}
