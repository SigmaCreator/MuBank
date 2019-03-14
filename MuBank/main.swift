//
//  main.swift
//  MuBank
//
//  Created by Rovane Moura on 12/03/19.
//  Copyright © 2019 MuBank. All rights reserved.
//

import Foundation

func upperMenu(){
    
    print("===================================================")
    print("||                --------------                 ||")
    print("||               | -|||- _ | -_ |                ||")
    print("||               | _-|- -|| _-|-|                ||")
    print("||               | ||- -_-| -| _|                ||")
    print("||               | ----| || - | |                ||")
    print("||                --------------                 ||")
    print("||                                               ||")
    print("||        Bank \(myUser.bankNumber) -  Mu Payments S.A.           ||")
    print("||               Agency: \(myUser.agency)                    ||")
    print("||              Account: \(myUser.account)                   ||")
    print("===================================================")
}

func startScreen() {
    
    var terminate = false
    
    while(!terminate) {
    
        upperMenu()
    
        print("===================================================")
        print("||   Welcome to your MuBank, John Appleseed 👋   ||")
        print("|| ############################################# ||")
        print("|| Invoice: \(myUser.currentInvoice) - Funds: \(myUser.funds) - Points: \(myUser.points) ||")
        print("===================================================")
        print("||                                               ||")
        print("||     Type the number of the desired action     ||")
        print("||                                               ||")
        print("|| (1) * [Deposit]                               ||")
        print("|| (2) * [Transfer]                              ||")
        print("|| (3) * [Adjust credit limit]                   ||")
        print("|| (4) * [Pay]                                   ||")
        print("||                                               ||")
        print("||         Press enter to close the app          ||")
        print("===================================================")
    
        let response = Int(readLine() ?? "-1")
        
        switch(response) {
            
        case 1: myUser.recentlyBought() // deposit()
            
        case 2: transfer()
            
        case 3: adjustLimit()
            
        case 4: pay()
            
        default: terminate = true
            
        }
        
    }

}

let pOne = Purchase(name: "Mercado Silva", value: 3.50, date: "MAR 14", kind: .GroceryStore)
let pTwo = Purchase(name: "Zaffari", value: 120.0, date: "FEV 18", kind: .Supermarket)
let pThree = Purchase(name: "Pizza Hut", value: 37.0, date: "APR 17", kind: .Restaurant)

myUser.purchases = [pOne,pTwo,pThree]

startScreen()


