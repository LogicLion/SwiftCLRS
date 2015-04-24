//
//  SwiftSort.swift
//  SwiftCLRS
//
//  Created by Thomas Hocking on 4/17/15.
//  Copyright (c) 2015 LionLabs. All rights reserved.
//

import Foundation

class SwiftSort: NSObject {
    
    
    func insertionSort(var what:[Int]) -> [Int]{
        
        var j,i,key :Int
        
        for j = 1; j < what.count; j+=1{
            key = what[j]
            i = j-1
            while i >= 0 && what[i] > key{
                 what[i+1] = what[i]
                i--
            }
             what[i+1] = key
        }
        return what
    }
    
   
}
