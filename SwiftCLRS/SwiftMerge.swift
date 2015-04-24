//
//  SwiftMerge.swift
//  SwiftCLRS
//
//  Created by Thomas Hocking on 4/23/15.
//  Copyright (c) 2015 LionLabs. All rights reserved.
//

import Foundation

class SwiftMerge: NSObject {
    
    func Merge(inout arr:[Int], start:Int, middle:Int, end:Int){
        let n1 = middle-start+1
        let n2 = end-middle
        
        var arr1 = [Int](count: n1+1, repeatedValue: 0)
        var arr2 = [Int](count: n2+1, repeatedValue: 0)
        
        var i,j,k :Int
        
        for i = 0; i < n1; i+=1{
            arr1[i] = arr[start+i]
        }
        
        for j = 0; j < n2; j+=1{
            arr2[j] = arr[middle+j+1]
        }
        
        arr1[n1] = Int.max
        arr2[n2] = Int.max
        
        i = 0
        j = 0
        
        for k = start; k <= end; k+=1{
            if(arr1[i] <= arr2[j]){
                arr[k] = arr1[i]
                i+=1
            }else{
                arr[k] = arr2[j]
                j+=1
            }
        }
    }
    
    func MergeSort(inout arr:[Int], start:Int, end:Int){
        if(start < end){
            var middle = (start+end)/2
            MergeSort(&arr, start: start, end: middle)
            MergeSort(&arr, start: middle+1, end: end)
            Merge(&arr, start: start, middle: middle, end: end)
        }
    }
}
