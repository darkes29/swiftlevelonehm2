//
//  programs.swift
//  swiftlevelonehm2
//
//  Created by Александр Ломтев on 06.06.17.
//  Copyright © 2017 Александр Ломтев. All rights reserved.
//

import Foundation
class Prog {
    private var inp:Int = 0
    func Chornor(input: Int)->String{
        let input = input
        inp = input
        if (inp%2 == 0){
            
            return ("четное")
        }
        else {
            return("не четное")
        }
    }
    
    func Del3(input: Int) ->String {
        let input = input
        inp = input
        var sum:Int = 0
        for number in String(inp).characters{
            let n = Int(String(number))
            sum += n!
        }
        if (sum%3 == 0) {
        return ("делится")
        }
        else{
        return ("не делится")
        }
    }
    func array100()->Array<Any>{
    var arr = [Int]()
    arr += 0...99
        return(arr)
    }
    func array100del3()->Array<Any>{
        let arr = array100()
        var temparr = [Int]()
        for (_, value) in arr.enumerated(){
            if (Chornor(input: value as! Int) == "не четное"){
            if (Del3(input: value as! Int)=="делится"){
                temparr.append(value as! Int)
        }
            }
        
    }
       
        return (temparr)
        }
}
