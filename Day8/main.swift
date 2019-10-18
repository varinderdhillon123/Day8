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
