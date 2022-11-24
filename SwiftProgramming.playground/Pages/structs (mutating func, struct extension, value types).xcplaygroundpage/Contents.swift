//: [Previous](@previous)

import Foundation
import UIKit

struct CheeseCoin {
    let ticket = "CHC"
    var usdPrice: Double
    var exchangeList: [String]
    var circulatingSupply: Double
}

var chc: CheeseCoin
chc = CheeseCoin(usdPrice: 3.33, exchangeList: ["CheeseHub", "GhostHub"], circulatingSupply: 10000.0)
print(chc)

struct LotusCoin {
    let ticket = "BLC"
    var usdPrice: Double
    var exchangeList: [String]
    var circulatingSupply: Double
    
    init(usdPrice: Double, exchangeList: [String], circulatingSupply: Double) {
        self.usdPrice = usdPrice
        self.exchangeList = exchangeList
        self.circulatingSupply = circulatingSupply
    }
    
    mutating func addExchange(_ exchange: String) {
        exchangeList.append(exchange)
    }
}

let lot = LotusCoin(usdPrice: 3800.0, exchangeList: ["CardKingdom"], circulatingSupply: 1000.0)
//lot.addExchange("Changed")//let can't chnage the constant properties

var blc = LotusCoin(usdPrice: 3800.0, exchangeList: ["CardKingdom"], circulatingSupply: 1000.0)
blc.addExchange("Changed")
print(blc)


extension CheeseCoin {
    mutating func burnCoins(_ amount: Double) {
        self.circulatingSupply -= amount
    }
}

chc.burnCoins(5000)
print(chc)

//MARK: values type example
var chcClone = chc
print("\(chc.circulatingSupply) | \(chcClone.circulatingSupply)")
chc.burnCoins(500)
print("\(chc.circulatingSupply) | \(chcClone.circulatingSupply)")
chcClone.burnCoins(4000)
print("\(chc.circulatingSupply) | \(chcClone.circulatingSupply)")
