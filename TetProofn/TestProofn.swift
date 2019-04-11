//
//  TestProofn.swift
//  TetProofn
//
//  Created by Reza on 11/04/19.
//  Copyright © 2019 Kuwux. All rights reserved.
//

import Foundation

public class TestProofn {
    public static func convertTime(timeString:String) -> String {
        
        var newTimeString = timeString.replacingOccurrences(of: "AM", with: ":AM")
        newTimeString = newTimeString.replacingOccurrences(of: "PM", with: ":PM")
        var arr = newTimeString.components(separatedBy: ":")
        if arr.contains("PM"){
            let a = (Int(arr[0]) ?? 0) + 12
            let b = (arr[0] == "12" ? "12" : "\(a)")
            arr[0] = b
        }
        else{
            arr[0] = (arr[0] == "12" ? "00" : arr[0])
        }
        arr.removeLast()
        return arr.joined(separator:":")
    }
    
    public static func stairCase(n:Int) -> String {
        var stairCaseStr = ""
        for i in 1...n {
            let s = String(repeating: " ", count: n-i) + String(repeating: "#", count: i)
            print("\(s)")
            stairCaseStr.append(s)
            if i != n {
                stairCaseStr.append("\n")
            }
        }
        return stairCaseStr
    }
    public static func minimumDeletion(listNumber:[Int]) -> Int {
        var maxVal = 1
        var temp : [Int:Int] = [:]
//        let listNumber = numberString.components(separatedBy: " ")
        for number in listNumber {
            if let val = temp[number] {
                temp[number] = val + 1
                maxVal = max(maxVal, temp[number]!)
            } else {
                temp[number] = 1
            }
            
        }
        return listNumber.count - maxVal
    }
    
    public static func biggerIsGreater( string: inout String, originStr: String) -> Bool{
        var array = string.map { String($0) }
        var i = array.count - 1;
        while i > 0 && array[i - 1] >= array[i] {
            i = i - 1
        }
        if i <= 0 {
            return false
        }
        var j = array.count - 1
        while array[j] <= array[i - 1]{
            j = j - 1
        }
        var temp = array[i - 1]
        array[i - 1] = array[j]
        array[j] = temp
        
        // Reverse the suffix
        j = array.count - 1;
        while (i < j) {
            temp = array[i]
            array[i] = array[j]
            array[j] = temp
            i = i + 1
            j = j - 1
        }
        string = array.joined(separator: "")
        if string < originStr {
            string = originStr
        }
        
        return true;
    }
}
