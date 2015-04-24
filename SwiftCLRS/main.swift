//
//  main.swift
//  SwiftCLRS
//
//  Created by Thomas Hocking on 4/17/15.
//  Copyright (c) 2015 LionLabs. All rights reserved.
//

import Foundation

println("Hello, World!")


var list:[Int] = [3,4,1,5,2,3,8,7]

var s = SwiftSort()

list = s.insertionSort(list)

println(list.description)


list = [3,6,1,5,2,7,4]


var m = SwiftMerge()

m.MergeSort(&list, start: 0, end: list.count-1)

println(list.description)


var n = SwiftHeap()


    list = [4,1,3,2,16,9,10,14,8,7]

n.HeapSort(&list, count:list.count)



println(list.description)
