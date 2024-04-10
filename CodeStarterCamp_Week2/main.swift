//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var comNums = Array(1...45)
var comResult: Set<Int> = []
while comResult.count < 6 {
    comResult.insert(comNums.randomElement()!)
}
print(comResult)

var myNums = Array(1...45)
var myResult: Set<Int> = []
while myResult.count < 6 {
    myResult.insert(myNums.randomElement()!)
}

print(myResult)

var lottoNums = comResult.filter{myResult.contains($0)}
var lottoResult: Set<Int> = []


print("축하합니다! \(lottoResult.count)개의 번호가 겹칩니다. \n겹친 번호는 \(lottoResult) 입니다.")


    switch lottoResult.count{
    case 1,2:
        print("아쉽게도 당첨금은 지급되지 않습니다.")
    case 3:
        print("당첨금은 5000원입니다.")
    case 4:
        print("당첨금은 50000원입니다.")
    case 5:
        print("당첨금은 1,527,232원입니다.")
    case 6:
        print("당첨금은 59,119,356원입니다.")
    default:
        print("겹치는 번호가 없습니다. \n이용해 주셔서 감사합니다.")
    }

