//
//  actions.swift
//  MuBank
//
//  Created by Rovane Moura on 13/03/19.
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
        
        print(" * Enter deposit amount")
        
        if let amount = Double(readLine() ?? "-1") {
            
            print("Amount: \(amount) - Invoice bar code: 32549328464390348052324")
            myUser.funds += amount
            
        }
        
        print("Press enter to return") ; let _ = readLine()
        
        
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
