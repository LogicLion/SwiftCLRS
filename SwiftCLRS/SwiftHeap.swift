//
//  SwiftHeap.swift
//  SwiftCLRS
//
//  Created by Thomas Hocking on 4/23/15.
//  Copyright (c) 2015 LionLabs. All rights reserved.
//

import Foundation

class SwiftHeap: NSObject {
    
    
    
    func HeapSort(inout a:[Int], count:Int){
        BuildMaxHeap(&a, count:count)
        var end = count - 1;
        
        while end > 0{
            exchange(&a, index: 0, largest: end)
            end-=1
            MaxHeapify(&a, start: 0, end: end)
        }
    }
    
    
    func BuildMaxHeap(inout a:[Int], count:Int){
        for var i = Int(floor(Double(count-2/2))); i >= 0; i-=1 {
            MaxHeapify(&a, start: i, end:count-1)
        }
    }
    
    func MaxHeapify(inout a:[Int], start:Int, end:Int){
        
        var root = start
        while root*2+1 <= end{
            var child = root*2+1
            var swap = root
            if a[swap] < a[child]{
                swap = child
            }
            
            if child+1 <= end && a[swap] < a[child+1]{
                swap = child+1
            }
            
            if swap == root{
                return
            }else{
                exchange(&a, index: root, largest: swap)
                root = swap
            }
        }
        
    }
    
    func exchange(inout a:[Int], index:Int, largest:Int){
        var temp = a[index];
        a[index] = a[largest];
        a[largest] = temp;
    }
    
    func Parent(i:Int)->Double{
        return floor((Double(i-1)/2))
    }
    
    func Left(i:Int)->Int{
        return (i<<1)+1
    }
    
    func Right(i:Int)->Int{
        return (i<<1)+2
    }
    

}