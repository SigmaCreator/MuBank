//
//  main.swift
//  MuBank
//
//  Created by Rovane Moura on 12/03/19.
//  Copyright © 2019 MuBank. All rights reserved.
//

import Foundation

func deposit() {
    
    print("===================================================")
    print("||                                               ||")
    print("||             Choose deposit method             ||")
    print("||                                               ||")
    print("|| (1) * [Invoicing]                             ||")
    print("|| (2) * [Bank transfer]                         ||")
    print("||                                               ||")
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    
    switch(response) {
        
    case 1:
        
        print(" Enter deposit amount ")
        
        if let amount = Int(readLine() ?? "-1") {
            
            print("Amount: \(amount) - Invoice bar code: 32549328464390348052324")
            
        }
        
        print("Press enter to return")
        
        let _ = readLine()
        
        
    case 2:
        
        print("@ Your MuAccount @")
        print("Agency: \(myUser.agency)")
        print("Account: \(myUser.account)")
        print("Bank: Mu Payments S.A.")
        
        
    default:
        print("404")
        
    }
    
}

func transfer() {

    myUser.configureMuAccount()
}

func adjustLimit() {
    
    myUser.configureCard()
}

func pay() {
    myUser.configureApp()
}

func startScreen() {
    
    upperMenu()
    
    print("===================================================")
    print("||   Welcome to your MuBank, John Appleseed 👋   ||")
    print("|| ############################################# ||")
    print("|| Invoice: \(myUser.invoice) Funds: - Points:   ||")
    print("===================================================")
    print("||                                               ||")
    print("||     Type the number of the desired action     ||")
    print("||                                               ||")
    print("|| (1) * [Deposit]                               ||")
    print("|| (2) * [Transfer]                              ||")
    print("|| (3) * [Adjust credit limit]                   ||")
    print("|| (4) * [Pay]                                   ||")
    print("||                                               ||")
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    
    switch(response) {
        
    case 1:
        print("You chose: Deposit")
        deposit()
        
    case 2:
        print("You chose: Transfer")
        transfer()
        
    case 3:
        print("You chose: Adjust card limit")
        adjustLimit()
        
    case 4:
        print("You chose: Pay")
        pay()
        
    default:
        print("404")
        
    }

}

while(true) { startScreen() }


